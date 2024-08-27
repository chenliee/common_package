// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:attendance/attendance.dart';

class LeaveResponse {
  static Future<LeaveItem> applyLeave(
      {required String project,
      required String rule,
      required String type,
      required String member,
      required int from,
      required int to,
      Map<String, dynamic>? attachment,
      required Map<String, dynamic> ext}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "member": member,
        "from": from,
        "to": to,
        "attachment": attachment,
        "ext": ext,
      })
        ..removeWhere((key, value) => value == null);

      LeaveItem? item;
      Map<String, dynamic> res = await BaseDio.getInstance().post(
        url: "/attendance/api/project/$project/rule/$rule/type/$type/leave",
        params: params,
      );
      item = LeaveItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<LeaveItem>?> leaveList(
      {Map<dynamic, dynamic>? filter,
      required String? project,
      num? page,
      num? size,
      Map<dynamic, dynamic>? sort}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "page": page,
        "size": size,
        "sort": sort ?? '{"createdAt":"desc"}',
        "filter": filter,
      })
        ..removeWhere((key, value) => value == null);

      List<LeaveItem> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
        url: "/attendance/api/project/$project/leave",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(LeaveItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<LeaveItem> leaveDetail(
      {required String? project, required String? id}) async {
    try {
      LeaveItem? item;
      Map<String, dynamic> res = await BaseDio.getInstance().get(
        url: "/attendance/api/project/$project/leave/$id",
      );
      item = LeaveItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<LeaveItem> approvalLeave(
      {required String? project,
      required String? sn,
      required String? status,
      Map<dynamic, dynamic>? ext}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "status": status,
        "ext": ext,
      })
        ..removeWhere((key, value) => value == null);

      LeaveItem? item;
      Map<String, dynamic> res = await BaseDio.getInstance().put(
        url: "/attendance/api/project/$project/$sn",
        params: params,
      );
      item = LeaveItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<PunchLogItem>?> getPunchLog(
      {required String? project,
      required String? rule,
      Map<dynamic, dynamic>? filter}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "filter": filter,
      })
        ..removeWhere((key, value) => value == null);

      List<PunchLogItem> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
        url: "/attendance/api/project/$project/rule/$rule/punch_log/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(PunchLogItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<PunchLogItem> addPunchLog(
      {required String? project,
      required String? rule,
      required String? date,
      required String? uid,
      required Map<dynamic, dynamic>? ext,
      Map<dynamic, dynamic>? point,
      String? deviceSN}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "date": date,
        "uid": uid,
        "ext": ext,
        "point": point,
        "deviceSN": deviceSN,
      })
        ..removeWhere((key, value) => value == null);

      PunchLogItem? item;
      Map<String, dynamic> res = await BaseDio.getInstance().post(
        url: "/attendance/api/project/$project/rule/$rule/punch_log/",
        params: params,
      );
      item = PunchLogItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
