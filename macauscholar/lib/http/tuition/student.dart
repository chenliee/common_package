import 'package:macauscholar/macauscholar.dart';
import 'package:macauscholar/model/tuition_student.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
/// package:macauscholar/model/tuition_student.dart
@ApiGen('/tuition', file: 'TuitionStudentResponse', dio: 'MacauDio')
abstract class Student {
  @ApiGen(
    '/api/student/',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'filter': '@C_filter',
      'keyword': '@C_keyword',
      'disablePaging': '@C_disablePaging'
    },
    method: ApiGen.GET,
    target: 'TuitionStudent',
  )
  Future<List<TuitionStudent>> getStudentList(
      {int? page,
      Map? filter,
      int? size,
      String? keyword,
      bool disablePaging = false});

  @ApiGen(
    '/api/student/\$number/',
    method: ApiGen.GET,
    target: 'TuitionStudent',
  )
  Future<TuitionStudent> getStudentDetail({required String number});

  @ApiGen(
    '/api/student/\$studentId/subscribe/',
    method: ApiGen.GET,
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'filter': '@C_filter',
      'keyword': '@C_keyword',
      'disablePaging': '@C_disablePaging'
    },
    target: 'SubscriptionItem',
  )
  Future<List<SubscriptionItem>> getStudentSubscribe(
      {int? page,
      Map? filter,
      int? size,
      String? keyword,
      bool disablePaging = false,
      required String studentId});
}
