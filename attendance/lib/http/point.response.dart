// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:attendance/attendance.dart';
import 'package:attendance/model/point_item.dart';

class PointResponse {
  static Future<PointItem?> getLessonList(
      {required String? project,
      required String? rule,
      required String? point}) async {
    try {
      PointItem? item;
      Map<String, dynamic> res = await BaseDio.getInstance().get(
        url: "/attendance/api/project/$project/rule/$rule/point/$point",
      );
      item = PointItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
