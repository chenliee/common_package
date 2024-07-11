// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/model/tuition_group_item.dart';

import '../../model/tuition_group_detail.dart';
import '../macau_dio.dart';

class TuitionGroupResponse {
  static Future<List<TuitionGroupItem>> getGroupList(
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

      List<TuitionGroupItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/tuition/api/group/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(TuitionGroupItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<TuitionGroupDetail> getGroupDetail({required num id}) async {
    try {
      TuitionGroupDetail? item;
      Map<String, dynamic> res = await MacauDio.getInstance().get(
        url: "/tuition/api/group/$id/",
      );
      item = TuitionGroupDetail.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<TuitionGroupItem> addGroup(
      {String? description,
      required String branch,
      String? user,
      int? userId,
      required String name}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "description": description,
        "branch": branch,
        "user": user,
        "userId": userId,
        "name": name,
      })
        ..removeWhere((key, value) => value == null);

      TuitionGroupItem? item;
      Map<String, dynamic> res = await MacauDio.getInstance().post(
        url: "/tuition/api/group/",
        params: params,
      );
      item = TuitionGroupItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
