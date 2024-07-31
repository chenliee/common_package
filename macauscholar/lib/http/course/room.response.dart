// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/macauscholar.dart';
import 'package:macauscholar/model/room_item.dart';

class RoomResponse {
  static Future<RoomItem> getRoomInfo({required String id}) async {
    try {
      RoomItem? item;
      Map<String, dynamic> res = await MacauDio.getInstance().get(
        url: "/course/api/room/$id",
      );
      item = RoomItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
