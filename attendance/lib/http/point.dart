import 'package:attendance/model/point_item.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:attendance/attendance.dart
/// package:attendance/model/point_item.dart
@ApiGen('/attendance', file: 'PointResponse', dio: 'BaseDio')
abstract class Point {
  @ApiGen(
    '/api/project/\$project/rule/\$rule/point/\$point',
    method: ApiGen.GET,
    target: 'PointItem',
  )
  Future<PointItem?> getLessonList({required String? project, required String? rule, required String? point});
}
