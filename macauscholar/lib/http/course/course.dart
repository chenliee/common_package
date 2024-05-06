import '../../auto_api/api_gen.dart';
import '../../model/course_item.dart';

/// package:service_package/service_package.dart
/// package:macauscholar1/macauscholar.dart
@ApiGen('/course', file: 'CourseResponse', dio: 'MacauDio')
abstract class Course {
  @ApiGen(
    '/api/course',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'sort': '@C_sort ?? {"createdAt": "desc"}',
      'query': '@C_query'
    },
    method: ApiGen.GET,
    target: 'CourseItem',
  )
  Future<List<CourseItem>> getCourseList(
      {required int page, Map? sort, required Map query, int? size});
}
