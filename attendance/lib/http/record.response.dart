// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:attendance/attendance.dart';
import 'package:attendance/model/record_add_item.dart';
import 'package:attendance/model/update_recoed.dart';
import 'package:attendance/model/rule_item.dart';

class RecordResponse {
  static Future<PunchLogItem> punchLogMember(
      {required String project, required String rule}) async {
    try {
      PunchLogItem? item;
      Map<String, dynamic> res = await BaseDio.getInstance().post(
        url: "/attendance/api/project/$project/rule/$rule/punch_log/member",
      );
      item = PunchLogItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

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

  static Future<RecordAddItem> addRecord(
      {required String project,
      required String rule,
      required String uid,
      required String leave,
      required num from,
      required num to}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "uid": uid,
        "leave": leave,
        "from": from,
        "to": to,
      })
        ..removeWhere((key, value) => value == null);

      RecordAddItem? item;
      Map<String, dynamic> res = await BaseDio.getInstance().post(
        url: "/attendance/api/project/$project/rule/$rule/record",
        params: params,
      );
      item = RecordAddItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<UpdateRecoed> updateRecord(
      {required String project,
      required String record,
      required String leave,
      Map<dynamic, dynamic>? ext}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "leave": leave,
        "ext": ext,
      })
        ..removeWhere((key, value) => value == null);

      UpdateRecoed? item;
      Map<String, dynamic> res = await BaseDio.getInstance().put(
        url: "/attendance/api/project/$project/record/$record",
        params: params,
      );
      item = UpdateRecoed.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<RuleItem> getRule(
      {required String project, required String rule}) async {
    try {
      RuleItem? item;
      Map<String, dynamic> res = await BaseDio.getInstance().get(
        url: "/attendance/api/project/$project/rule/$rule/",
      );
      item = RuleItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
