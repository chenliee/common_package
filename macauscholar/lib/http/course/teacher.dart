import 'package:macauscholar/macauscholar.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
@ApiGen('/course', file: 'TeacherResponse', dio: 'MacauDio')
abstract class Teacher {
  @ApiGen(
    '/api/teacher',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'sort': '@C_sort ?? {"createdAt": "desc"}',
      'filter': '@C_filter',
      'keyword': '@C_keyword'
    },
    method: ApiGen.GET,
    target: 'TeacherItem',
  )
  Future<List<TeacherItem>> getTeacherList(
      {required int page, Map? sort, Map? filter, int? size, String? keyword});

  @ApiGen(
    '/api/teacher/\$id',
    method: ApiGen.GET,
    target: 'TeacherItem',
  )
  Future<TeacherItem> getTeacherItem({required String id});
}
