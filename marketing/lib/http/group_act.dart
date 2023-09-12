import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:marketing/model/group_item.dart';
import 'package:marketing/model/user_group_item.dart';
import 'package:service_package/service_package.dart';

@immutable
class GroupActResponse {
  static String groupActListUrl =
      '/marketing/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/groupAct';
  static String payGroupUrl =
      '/marketing/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/groupAct/pay';
  static String refundGroupActUrl =
      '/marketing/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/groupAct/refund';
  static String userGroupActListUrl =
      '/marketing/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/groupAct/List';

  static Future<dynamic> getGroupActList() async {
    List<GroupItem> list = [];
    try {
      List<dynamic> jsonList =
          await BaseDio.getInstance().get(url: groupActListUrl);
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
          await BaseDio.getInstance().get(url: '$groupActListUrl/$gid');
      item = GroupItem.fromJson(res);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return item;
  }

  static Future payGroupAct(
      {num? id, String? channel, String? redirectUrl}) async {
    String url = '';
    try {
      Map<String, dynamic> params = {
        'id': id,
        'channel': channel,
        'platform': Platform.isAndroid ? 'android' : 'ios',
      };
      params['redirectUrl'] = redirectUrl;
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: payGroupUrl, params: params);
      url = res['url'];
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return url;
  }

  @Deprecated('弃用')
  static Future refundGroupAct({required String code}) async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: '$refundGroupActUrl/$code');
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getUserGroupActList() async {
    List<UserGroupItem> list = [];
    try {
      List<dynamic> jsonList =
          await BaseDio.getInstance().get(url: userGroupActListUrl);
      for (dynamic item in jsonList) {
        list.add(UserGroupItem.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return list;
  }

  static Future getUserGroupActItem({required num gid}) async {
    late UserGroupItem item;
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$userGroupActListUrl/$gid');
      item = UserGroupItem.fromJson(res);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return item;
  }
}
