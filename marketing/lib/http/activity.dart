// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:article/article.dart';
import 'package:marketing/marketing.dart';
import 'package:marketing/model/activity_log_item.dart';
import 'package:service_package/service_package.dart';

class ActivityResponse {
  static Future<List<ActivityItem>?> getActivityList(
      {required num page,
        required num size,
        String? status,
        String? type,
        String? custom}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "page": page,
        "size": size,
        "status": status,
        "type": type,
        "custom": custom,
      })
        ..removeWhere((key, value) => value == null);

      List<ActivityItem> list = [];
      Map<String, dynamic> jsonLists = await BaseDio.getInstance().get(
        url:
        "/marketing2/api/merchant/${ServiceGlobal.instance.merchantId}/activity",
        params: params,
      );
      for (var item in jsonLists['list']) {
        list.add(ActivityItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<ActivityLogItem>> getActivityLog(
      {required num page,
        required num size,
        String? status,
        String? type,
        String? startAt,
        String? endAt,
        List? refTargetId,
        Map<dynamic, dynamic>? custom}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "page": page,
        "size": size,
        "status": status,
        "type": type,
        "custom": custom,
        "startAt": startAt,
        "endAt": endAt,
        "refTargetId": refTargetId,
      })
        ..removeWhere((key, value) => value == null);

      List<ActivityLogItem> list = [];
      Map<String, dynamic> jsonLists = await BaseDio.getInstance().get(
        url: "/marketing2/api/user/me/logs",
        params: params,
      );
      for (var item in jsonLists['list']) {
        list.add(ActivityLogItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future join({
    required String code,
  }) async {
    try {
      Map<String, dynamic> jsonLists = await BaseDio.getInstance().post(
        url: "/marketing2/api/user/$code",
      );
      return jsonLists;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<ActivityItem> getActivityDetail(
      {required String code, bool allChildren = true}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "allChildren": allChildren,
      })
        ..removeWhere((key, value) => value == null);

      ActivityItem? item;
      Map<String, dynamic> jsonLists = await BaseDio.getInstance().get(
        url: "/marketing2/api/user/$code",
        params: params,
      );
      item = ActivityItem.fromJson(jsonLists);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<ActivityItem>> getCodeLog({
    required String code,
    required String uid,
    String? type,
    String? targetType,
    required num page,
    num? size,
  }) async {
    try {
      Map<String, dynamic> params = Map.from({
        "page": page,
        "size": size ?? ServiceGlobal.instance.pageSize,
        "status": "processed",
        "type": type,
        "targetType": targetType
      })
        ..removeWhere((key, value) => value == null);

      List<ActivityItem> list = [];
      Map<String, dynamic> jsonLists = await MerchantDio.getInstance().get(
        url: "/marketing2/api/merchant/scholar/target/$uid/market/$code/",
        params: params,
      );
      for (var item in jsonLists['list']) {
        list.add(ActivityItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<ActivityItem> sendActivity({
    required String uid,
    required String targetType,
    required String code,
    Map? custom,
  }) async {
    try {
      Map<String, dynamic> params = Map.from({
        "uid": uid,
        "targetType": targetType,
        "custom": custom,
      })
        ..removeWhere((key, value) => value == null);

      ActivityItem? item;
      Map<String, dynamic> jsonLists = await BaseDio.getInstance().post(
        url: "/marketing2/api/merchant/${ServiceGlobal.instance.merchantId}/activity/$code",
        params: params,
      );
      item = ActivityItem.fromJson(jsonLists);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
