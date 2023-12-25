import 'package:marketing/model/group_item.dart';
import 'package:marketing/model/user_group_item.dart';
import 'package:service_package/service_package.dart';

class GroupActResponse {
  static String groupActUrl =
      '/marketing/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/groupAct';
  static String payGroupUrl = '$groupActUrl/pay';
  static String refundGroupActUrl = '$groupActUrl/refund';
  static String userGroupActListUrl = '$groupActUrl/List';

  static Future<List<GroupItem>> getGroupActList({int? page}) async {
    List<GroupItem> list = [];
    try {
      Map<String, dynamic> params = page != null
          ? {
              'page': page,
              'pageSize': ServiceGlobal.instance.pageSize,
            }
          : {};
      List<dynamic> jsonList =
          await BaseDio.getInstance().get(url: groupActUrl, params: params);
      for (dynamic item in jsonList) {
        list.add(GroupItem.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return list;
  }

  static Future<dynamic> getGroupActItem({required num gid}) async {
    late GroupItem item;
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$groupActUrl/$gid');
      item = GroupItem.fromJson(res);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return item;
  }

  static Future payGroupAct(
      {required num id, required String userId, String? redirectUrl}) async {
    try {
      Map<String, dynamic> params =
          Map.from({'id': id, 'userId': userId, 'redirectUrl': redirectUrl})
            ..removeWhere((key, value) => value == null);
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: payGroupUrl, params: params);
      return res;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  @Deprecated('弃用')
  static Future refundGroupAct({required String code}) async {
    try {
      await BaseDio.getInstance().post(url: '$refundGroupActUrl/$code');
      ToastInfo.toastInfo(msg: '申请成功');
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future getUserGroupActList({int? page}) async {
    try {
      Map<String, dynamic> params = page != null
          ? {
              'page': page,
              'pageSize': ServiceGlobal.instance.pageSize,
            }
          : {};
      List<dynamic> jsonList = await BaseDio.getInstance()
          .get(url: userGroupActListUrl, params: params);
      List<UserGroupItem> list = [];
      for (dynamic item in jsonList) {
        list.add(UserGroupItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getUserGroupActItem({required num gid}) async {
    late UserGroupItem item;
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$groupActUrl/groupOrder/$gid');
      item = UserGroupItem.fromJson(res);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return item;
  }
}
