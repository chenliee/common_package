// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:attendance/attendance.dart';

class RecordResponse {
  static Future<List<RecordItem>> getRecordList(
      {Map<dynamic, dynamic>? filter,
      required String project,
      required String rule}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "filter": filter,
      })
        ..removeWhere((key, value) => value == null);

      List<RecordItem> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
        url: "/attendance/api/project/$project/rule/$rule/record/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(RecordItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
