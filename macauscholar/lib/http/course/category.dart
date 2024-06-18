import 'package:macauscholar/macauscholar.dart';
import 'package:macauscholar/model/category_item.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
@ApiGen('/course', file: 'CategoryResponse', dio: 'MacauDio')
abstract class Class {
  @ApiGen(
    '/api/category',
    params: {
      'sort': '@C_sort ?? {"createdAt": "desc"}',
      'filter': '@C_filter',
      'keyword': '@C_keyword'
    },
    method: ApiGen.GET,
    target: 'CategoryItem',
  )
  Future<List<CategoryItem>> getClassList(
      {Map? sort, Map? filter, String? keyword});
}
