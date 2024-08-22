// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/macauscholar.dart';
import 'package:macauscholar/model/lesson_item_model.dart';

class TeacherAppResponse {
  static Future<List<LessonItemModel>?> getLessonData(
      {required num? page,
      required num? size,
      required String? teacher}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "page": page,
        "size": size,
        "teacher": teacher,
      })
        ..removeWhere((key, value) => value == null);

      List<LessonItemModel> list = [];
      List<dynamic> jsonLists = await ScholarDio.getInstance().get(
        url: "/api/scholar/teacher/lesson",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(LessonItemModel.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
