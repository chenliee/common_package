// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/macauscholar.dart';

class EnrollmentResponse {
  static Future<List<CourseEnrollmentItem>> getEnrollmentList(
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

      List<CourseEnrollmentItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/course/api/enrollment/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(CourseEnrollmentItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<CourseEnrollmentItem> enrollment(
      {String? student,
      required String studentName,
      String? phone,
      required String gender,
      String? birthday,
      required String clases,
      String way = 'app',
      required num lessons,
      required num lessonAmount,
      required num lessonRealAmount,
      required bool pdac}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "student": student,
        "studentName": studentName,
        "phone": phone,
        "gender": gender,
        "birthday": birthday,
        "clases": clases,
        "way": way,
        "lessons": lessons,
        "lessonAmount": lessonAmount,
        "lessonRealAmount": lessonRealAmount,
        "pdac": pdac,
      })
        ..removeWhere((key, value) => value == null);

      CourseEnrollmentItem? item;
      Map<String, dynamic> res = await MacauDio.getInstance().post(
        url: "/course/api/enrollment/",
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
