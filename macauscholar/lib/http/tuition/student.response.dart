// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/macauscholar.dart';
import 'package:macauscholar/model/tuition_student.dart';

class TuitionStudentResponse {
  static Future<List<TuitionStudent>> getStudentList(
      {int? page,
      Map<dynamic, dynamic>? filter,
      int? size,
      String? keyword,
      bool disablePaging = false}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "size": size,
        "page": page,
        "filter": filter,
        "keyword": keyword,
        "disablePaging": disablePaging,
      })
        ..removeWhere((key, value) => value == null);

      List<TuitionStudent> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/tuition/api/student/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(TuitionStudent.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<TuitionStudent> getStudentDetail(
      {required String number}) async {
    try {
      TuitionStudent? item;
      Map<String, dynamic> res = await MacauDio.getInstance().get(
        url: "/tuition/api/student/$number/",
      );
      item = TuitionStudent.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }


}