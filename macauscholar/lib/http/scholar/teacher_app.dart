import 'package:macauscholar/macauscholar.dart';
import 'package:macauscholar/model/bus_default_route.dart';
import 'package:macauscholar/model/lesson_item_model.dart';
import 'package:service_package/api/api_gen.dart';


/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
/// package:macauscholar/model/lesson_item_model.dart
/// package:macauscholar/model/bus_default_route.dart
@ApiGen('/api', file: 'TeacherAppResponse', dio: 'ScholarDio')
abstract class Class {
  @ApiGen(
    '/scholar/teacher/lesson',
    params: {
      "page": "@C_page",
      "size": "@C_size",
      "teacher": "@C_teacher",
    },
    method: ApiGen.GET,
    target: 'LessonItemModel',
  )
  Future<List<LessonItemModel>?> getLessonData({required num? page, required num? size, required String? teacher});

  @ApiGen(
    '/lbs/bus/\$id',
    method: ApiGen.GET,
    target: 'BusDefaultRoute',
  )
  Future<BusDefaultRoute?> getBusDefaultRoute({required String? id});

  @ApiGen(
    '/lbs/bus/\$id',
    params: {
      "code":"@C_code"
    },
    method: ApiGen.POST,
    target: '',
  )
  Future setBusDefaultRoute({required String? id,required String? code});
}
