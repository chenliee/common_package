import 'package:macauscholar/macauscholar.dart';
import 'package:macauscholar/model/category_item.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
@ApiGen('/course', file: 'CourseStudentResponse', dio: 'MacauDio')
abstract class Class {
  @ApiGen(
    '/api/scholar/\$id',
    method: ApiGen.GET,
    target: 'ScholarItem',
  )
  Future<ScholarItem> getStudentDetail(
      {required String? id});
}
