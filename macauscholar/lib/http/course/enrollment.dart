import 'package:service_package/api/api_gen.dart';

import '../../macauscholar.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
@ApiGen('/course', file: 'EnrollmentResponse', dio: 'MacauDio')
abstract class Course {
  @ApiGen(
    '/api/enrollment/',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'sort': '@C_sort ?? \'{"createdAt": "desc"}\'',
      'filter': '@C_filter',
      'keyword': '@C_keyword'
    },
    method: ApiGen.GET,
    target: 'CourseEnrollmentItem',
  )
  Future<List<CourseEnrollmentItem>> getEnrollmentList(
      {required int page,
      String? sort,
      Map? filter,
      int? size,
      String? keyword});

  @ApiGen(
    '/api/enrollment/',
    params: {
      'student': '@C_student',
      'studentName': '@C_studentName',
      'phone': '@C_phone',
      'gender': '@C_gender',
      'birthday': '@C_birthday',
      'clases': '@C_clases',
      'joinAt': '@C_joinAt',
      'way': '@C_way',
      'lessons': '@C_lessons',
      'lessonAmount': '@C_lessonAmount',
      'lessonRealAmount': '@C_lessonRealAmount',
    },
    method: ApiGen.POST,
    target: 'CourseEnrollmentItem',
  )
  Future<CourseEnrollmentItem> enrollment({
    String? student,
    required String studentName,
    required String phone,
    required String gender,
    required String birthday,
    required String clases,
    String way = 'app',
    required num lessons,
    required num lessonAmount,
    required num lessonRealAmount,
  });
}
