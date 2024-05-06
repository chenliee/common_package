import 'package:macauscholar1/macauscholar.dart';

import '../../auto_api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar1/macauscholar.dart
@ApiGen('/course', file: 'TeacherResponse', dio: 'MacauDio')
abstract class Teacher {
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
