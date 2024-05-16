// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar1/macauscholar.dart';

class CourseResponse {
  static Future<List<CourseItem>> getCourseList(
      {required int page,
      Map<dynamic, dynamic>? sort,
      Map<dynamic, dynamic>? filter,
      int? size,
      String? keyword}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "size": size,
        "page": page,
        "sort": sort ?? {"createdAt": "desc"},
        "filter": filter,
        "keyword": keyword,
      })
        ..removeWhere((key, value) => value == null);

      List<CourseItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/course/api/course",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(CourseItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
