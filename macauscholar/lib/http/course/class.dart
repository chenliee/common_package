import 'package:macauscholar1/macauscholar.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar1/macauscholar.dart
@ApiGen('/course', file: 'ClassResponse', dio: 'MacauDio')
abstract class Class {
  @ApiGen(
    '/api/class',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'sort': '@C_sort ?? {"createdAt": "desc"}',
      'filter': '@C_filter',
      'keyword': '@C_keyword'
    },
    method: ApiGen.GET,
    target: 'ClassItem',
  )
  Future<List<ClassItem>> getClassList(
      {required int page, Map? sort, Map? filter, int? size, String? keyword});
}
