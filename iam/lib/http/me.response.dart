// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:iam/iam.dart';
import 'package:iam/model/captcha_model.dart';
import 'package:iam/model/mer_login.dart';

class MeResponse {
  static Future<List<LinkModel>> getMeLink() async {
    try {
      List<LinkModel> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
        url: "/iam/api/me/link",
        isApi:false
      );
      for (var item in jsonLists) {
        list.add(LinkModel.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<dynamic> addLink(
      {required String code, required String provider}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "code": code,
      })
        ..removeWhere((key, value) => value == null);

      dynamic res = await BaseDio.getInstance().post(
        url: "/iam/api/me/link/$provider/",
        params: params,
      );
      return res;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<dynamic> deleteLink({required String provider}) async {
    try {
      dynamic res = await BaseDio.getInstance().delete(
        url: "/iam/api/me/link/$provider/",
      );
      return res;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
