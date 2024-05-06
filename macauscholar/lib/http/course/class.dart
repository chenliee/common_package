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
      'query': '@C_query'
    },
    method: ApiGen.GET,
    target: 'ClassItem',
  )
  Future<List<ClassItem>> getClassList(
      {required int page, Map? sort, required Map query, int? size});
}
