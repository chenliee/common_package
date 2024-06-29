// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/macauscholar.dart';

class ClassResponse {
  static Future<List<ClassItem>> getClassList(
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

      List<ClassItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/course/api/class",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(ClassItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<CourseEnrollmentItem> addEnrollmentItem(
      {required String scholar,
      required String classId,
      String? remark}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "scholar": scholar,
        "remark": remark,
      })
        ..removeWhere((key, value) => value == null);

      CourseEnrollmentItem? item;
      Map<String, dynamic> res = await MacauDio.getInstance().post(
        url: "/course/api/class/$classId/enrollment",
        params: params,
      );
      item = CourseEnrollmentItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
