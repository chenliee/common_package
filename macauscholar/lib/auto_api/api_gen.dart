import '../model/teacher_item.dart';

class ApiGen {
  static const String GET = 'GET';
  static const String POST = 'POST';
  static const String PUT = 'PUT';
  static const String PATCH = 'PATCH';
  static const String DELETE = 'DELETE';

  final String? target; // 类名
  final String? file; // 文件名字
  final String url; // 接口地址
  final String method; // 请求方式
  final dynamic params; // 请求数据
  final dynamic data; // 请求数据
  final String? contentType; // 请求数据contentType
  final Map<String, dynamic>? header; // 请求header
  final String dio; // 请求header

  const ApiGen(this.url,
      {this.method = POST,
      this.params,
      this.data,
      this.contentType,
      this.header,
      this.target,
      this.file,
      this.dio = 'BaseDio'});
}

@ApiGen('/course', file: 'TeacherResponse')
abstract class A {
  /// package:service_package/service_package.dart
  /// package:macauscholar1/macauscholar.dart
  @ApiGen(
    '/api/teacher',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'sort': '@C_sort ?? {"createdAt": "desc"}',
      'query': '@C_query'
    },
    method: ApiGen.GET,
    target: 'TeacherItem',
  )
  Future<List<TeacherItem>> getTeacherList(
      {required int page, Map? sort, required Map query, int? size});
}
