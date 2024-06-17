// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:bestlife_retail/bestlife_retail.dart';
import 'package:bestlife_retail/http/goody_dio.dart';
import 'package:bestlife_retail/model/goody_home_model.dart';
import 'package:bestlife_retail/model/sing_in_model.dart';
import 'package:bestlife_retail/model/sing_record_model.dart';
import 'package:service_package/service_package.dart';

class GoodyActivityResponse {
  static Future<LinkModel> getActivityLink(
      {required String helpCode, required String initCode}) async {
    try {
      LinkModel? item;
      Map<String, dynamic> res = await GoodyDio.getInstance().get(
        url: "/api/activity/share_link/$initCode/$helpCode",
      );
      item = LinkModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  /// 首頁數據
  static Future getHomeData() async {
    try {
      GoodyHomeModel data;
      Map<String, dynamic> res =
          await GoodyDio.getInstance().get(url: "/api/goody/home/data");
      data = GoodyHomeModel.fromJson(res);
      return data;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  /// 積分簽到
  static Future memberSingIn() async {
    try {
      Map<String, dynamic> res =
          await GoodyDio.getInstance().post(url: "/api/goody/member/sign");
      SingInModel data = SingInModel.fromJson(res);
      return data;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  /// 簽到記錄
  static Future memberSingRecord() async {
    try {
      List<SingRecordModel> list = [];
      List<dynamic> res = await GoodyDio.getInstance()
          .get(url: "/api/goody/member/sign/record");
      for (var item in res) {
        list.add(SingRecordModel.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
