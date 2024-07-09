// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';

class LeaveResponse {
  static Future<dynamic> applyLeave(
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

      Map<String, dynamic> res = await BaseDio.getInstance().post(
        url: "/attendance/api/project/$project/rule/$rule/type/$type/leave",
        params: params,
      );
      return res;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
