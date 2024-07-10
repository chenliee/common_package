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
}
