// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/macauscholar.dart';

class CourseStudentResponse {
  static Future<ScholarItem> getStudentDetail({required String? id}) async {
    try {
      ScholarItem? item;
      Map<String, dynamic> res = await MacauDio.getInstance().get(
        url: "/course/api/scholar/$id",
      );
      item = ScholarItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
