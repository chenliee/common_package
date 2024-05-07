import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:build/build.dart';
import 'package:mustache_template/mustache.dart';
import 'package:source_gen/source_gen.dart';

import 'annotation_util.dart';
import 'api_gen.dart';
import 'api_util_tpl.dart';

List<Map<String, dynamic>> functions = [];
List<Map<String, dynamic>> imports = [];
Map<String, bool> importMap = {};

class ApiGenerator extends GeneratorForAnnotation<ApiGen> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    String baseUrl = '';

    /// 注解修饰的是类，注解中可添加baseUrl及生成目标类名
    if (element is ClassElement) {
      baseUrl = annotation.peek('url')?.stringValue ?? '';
      print('ClassElement baseUrl : $baseUrl');
      if (baseUrl.isEmpty) {
        print('please check annotation url of class : ${element.name}');
        return;
      }
    }

    addDocumentImport(element, buildStep);

    /// 遍历含有注解的类的成员，本文只处理接口方法注解
    element.visitChildren(SimpleVisitor(buildStep, baseUrl));

    Template tpl = Template(ApiUtilTpl.tpl);
    String content = tpl.renderString({
      'imports': imports,
      'fileName': annotation.peek('file')?.stringValue,
      'targetClassName': 'ApiBase',
      'functions': functions,
      'dio': annotation.peek('dio')?.stringValue
    });
    imports.clear();
    functions.clear();
    importMap.clear();
    return content;
  }

  /// 添加import包信息
  static void addDocumentImport(Element element, BuildStep buildStep) {
    final documentationComment = element.documentationComment;
    if (documentationComment != null) {
      List<String> comments = documentationComment.split('\n');
      for (String elem in comments) {
        if (elem.isNotEmpty) {
          if (elem.contains('package:')) {
            ApiGenerator.addImport(
                buildStep, elem.substring(elem.indexOf('package')));
          } else if (elem.contains('dart:')) {
            ApiGenerator.addImport(
                buildStep, elem.substring(elem.indexOf('dart')));
          }
        }
      }
    }
  }

  static void addImport(BuildStep buildStep, String path) {
    String result = path;
    if (path.startsWith('/${buildStep.inputId.package}/lib/')) {
      result =
          "package:${buildStep.inputId.package}/${path.replaceFirst('/${buildStep.inputId.package}/lib/', '')}";
    }
    if (!importMap.containsKey(result)) {
      importMap[result] = true;
      print("addImport path[$path]");
      imports.add({"path": result});
    }
  }
}

class SimpleVisitor extends SimpleElementVisitor {
  final String _baseUrl;
  final BuildStep _buildStep;
  SimpleVisitor(this._buildStep, this._baseUrl);

  @override
  visitMethodElement(MethodElement element) {
    ConstantReader reader = ConstantReader(
        const TypeChecker.fromRuntime(ApiGen).firstAnnotationOf(element));

    Map<String, dynamic> funcInfo = {};
    Map<String, dynamic> defaultParams = {};

    funcInfo['functionDefine'] = element.toString();

    if (element.returnType.isVoid) {
      print('please check return type of method : ${element.name}');
      return;
    }

    var url = reader.peek('url')?.stringValue ?? '';
    if (url.isEmpty) {
      print('please check annotation url of method : ${element.name}');
      return;
    }
    funcInfo['url'] = _baseUrl + url;

    funcInfo["withBodyWrapper"] = false;
    ApiGenerator.addDocumentImport(element, _buildStep);

    var requestName = '';
    var method = reader.peek('method')?.stringValue ?? '';
    switch (method) {
      case ApiGen.POST:
        requestName = 'post';
        funcInfo['httpSendData'] = true;
        break;

      case ApiGen.GET:
        requestName = 'get';
        funcInfo['httpSendData'] = false;
        break;

      default:
        print('unsupportable method : $method');
        return;
    }
    funcInfo['requestName'] = requestName;
    funcInfo["className"] = reader.peek('target')?.stringValue;

    var params = reader.peek('params');
    funcInfo["hasParams"] = params != null;

    if (funcInfo["hasParams"]) {
      funcInfo["paramsType"] = AnnotationUtil.getDataType(params!.objectValue);
      funcInfo["paramsValue"] = AnnotationUtil.getDataValue(params.objectValue);
    } else {
      if (element.parameters.isNotEmpty) {
        funcInfo["hasParams"] = true;
        funcInfo["paramsValue"] = "{}";
        funcInfo["paramsType"] = "Map<String, dynamic>";
      }
    }

    var data = reader.peek('data');
    funcInfo["hasData"] = data != null;
    if (funcInfo["hasData"]) {
      funcInfo["dataType"] = AnnotationUtil.getDataType(data!.objectValue);
      funcInfo["dataValue"] = AnnotationUtil.getDataValue(data.objectValue);
    }

    /// 函数返回值
    DartType returnType = element.returnType;
    funcInfo["returnType"] = returnType.toString();
    print(funcInfo["returnType"]);
    funcInfo["isList"] = funcInfo["returnType"].contains("List");

    /// 返回值为泛型
    if (AnnotationUtil.canHaveGenerics(returnType)) {
      List<DartType> types = AnnotationUtil.getGenericTypes(returnType);
      if (types.length > 1) {
        throw Exception("multiple generics not support!!!");
      }
      funcInfo["rspType"] = types.first.toString();
    }

    /// http contentType
    funcInfo['hasContentType'] =
        reader.peek('contentType')?.stringValue != null;
    if (funcInfo['hasContentType']) {
      funcInfo['contentType'] = reader.peek('contentType')?.stringValue;
    }

/*    /// 获取此函数需要的引入的包
    /// 返回值的包
    ApiGenerator.addImport(
        _buildStep, returnType.element!.librarySource!.fullName);

    /// 返回值为泛型
    if (AnnotationUtil.canHaveGenerics(returnType)) {
      List<DartType> types = AnnotationUtil.getGenericTypes(returnType);
      for (DartType type in types) {
        ApiGenerator.addImport(
            _buildStep, type.element!.librarySource!.fullName);
      }
    }*/
    functions.add(funcInfo);
  }
}
