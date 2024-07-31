// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/macauscholar.dart';
import 'package:macauscholar/model/lesson_item_model.dart';

class LessonResponse {
  static Future<List<LessonItemModel>?> getLessonList(
      {required int page,
      String? sort,
      Map<dynamic, dynamic>? filter,
      int? size,
      String? keyword}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "size": size,
        "page": page,
        "sort": sort ?? '{"createdAt": "desc"}',
        "filter": filter,
        "keyword": keyword,
      })
        ..removeWhere((key, value) => value == null);

      List<LessonItemModel> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/course/api/lesson/",
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
