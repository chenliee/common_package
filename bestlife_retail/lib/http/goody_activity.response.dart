// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:bestlife_retail/bestlife_retail.dart';
import 'package:bestlife_retail/http/goody_dio.dart';
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
}
