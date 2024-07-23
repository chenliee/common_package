// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:attendance/attendance.dart';
import 'package:attendance/model/leave_list_item.dart';
import 'package:attendance/model/leave_detail.dart';

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

  static Future<List<LeaveListItem>?> leaveList(
      {Map<dynamic, dynamic>? filter, required String? project}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "filter": filter,
      })
        ..removeWhere((key, value) => value == null);

      List<LeaveListItem> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
        url: "/attendance/api/project/$project/leave",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(LeaveListItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<LeaveDetail> leaveDetail(
      {required String? project, required String? id}) async {
    try {
      LeaveDetail? item;
      Map<String, dynamic> res = await BaseDio.getInstance().get(
        url: "/attendance/api/project/$project/leave/$id",
      );
      item = LeaveDetail.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<LeaveDetail> approvalLeave(
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

      LeaveDetail? item;
      Map<String, dynamic> res = await BaseDio.getInstance().put(
        url: "/attendance/api/project/$project/$sn",
        params: params,
      );
      item = LeaveDetail.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
