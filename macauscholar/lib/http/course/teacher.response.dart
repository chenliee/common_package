// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar1/macauscholar.dart';

class TeacherResponse {
  static Future<List<TeacherItem>> getTeacherList(
      {required int page,
      Map<dynamic, dynamic>? sort,
      required Map<dynamic, dynamic> query,
      int? size}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "size": size,
        "page": page,
        "sort": sort ?? {"createdAt": "desc"},
        "query": query,
      })
        ..removeWhere((key, value) => value == null);

      List<TeacherItem> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
        url: "/course/api/teacher",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(TeacherItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
