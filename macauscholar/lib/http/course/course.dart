import 'package:service_package/api/api_gen.dart';

import '../../model/course_item.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
@ApiGen('/course', file: 'CourseResponse', dio: 'MacauDio')
abstract class Course {
  @ApiGen(
    '/api/course',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'sort': '@C_sort ?? \'{"createdAt": "desc"}\'',
      'filter': '@C_filter',
      'keyword': '@C_keyword'
    },
    method: ApiGen.GET,
    target: 'CourseItem',
  )
  Future<List<CourseItem>> getCourseList(
      {required int page,
      String? sort,
      Map? filter,
      int? size,
      String? keyword});

  @ApiGen(
    '/api/course/\$id',
    method: ApiGen.GET,
    target: 'CourseItem',
  )
  Future<CourseItem> getCourse({required String id});
}
