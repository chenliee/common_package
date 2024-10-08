import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

class AnnotationUtil {
  static const String KEEP_NAME_PREFIX = "@C_";

  /// 获取 DartObject 数据值字符串。代码格式
  static String getDataValue(DartObject dartObject) {
    String result = "";
    if (dartObject.type!.isDartCoreMap) {
      Map<DartObject?, DartObject?>? map = dartObject.toMapValue();
      result = "{";
      map?.forEach((key, value) {
        result += "\n${getDataValue(key!)} : ${getDataValue(value!)},";
      });
      result += "\n}";
    } else if (dartObject.type!.isDartCoreString) {
      if (dartObject.toStringValue()!.startsWith(KEEP_NAME_PREFIX)) {
        return dartObject.toStringValue()!.substring(
            KEEP_NAME_PREFIX.length, dartObject.toStringValue()!.length);
      }
      return "\"${dartObject.toStringValue()}\"";
    } else if (dartObject.type!.isDartCoreList) {
      List<DartObject> list = dartObject.toListValue()!;
      result = "[";
      for (var element in list) {
        result += "\n${getDataValue(element)},";
      }
      result += "\n]";
    } else if (dartObject.type!.isDartCoreInt) {
      result = "${dartObject.toIntValue()}";
    } else if (dartObject.type!.isDartCoreDouble) {
      result = "${dartObject.toDoubleValue()}";
    } else if (dartObject.type!.isDartCoreBool) {
      result = "${dartObject.toBoolValue()}";
    } else if (dartObject.type!.isDynamic) {
      result = dartObject.toString();
    } else {
      throw Exception("data value [${dartObject.type}] not support!!!");
    }
    return result;
  }

  /// 获取 DartObject 数据类型。代码格式
  static String getDataType(DartObject value) {
    if (value.type!.isDartCoreMap) {
      return "Map<String, dynamic>";
    } else if (value.type is DynamicType) {
      return "dynamic";
    } else if (value.type!.isDartCoreString) {
      return "String";
    } else if (value.type!.isDartCoreList) {
      return "List";
    } else if (value.type!.isDartCoreInt) {
      return "int";
    } else if (value.type!.isDartCoreDouble) {
      return "double";
    } else if (value.type!.isDartCoreBool) {
      return "bool";
    } else {
      throw Exception("data type not support!!!");
    }
  }

  static List<DartType> getGenericTypes(DartType type) {
    return type is ParameterizedType ? type.typeArguments : const [];
  }

  static bool canHaveGenerics(DartType type) {
    final element = type.element;
    if (element is ClassElement) {
      return element.typeParameters.isNotEmpty;
    }
    return false;
  }
}
