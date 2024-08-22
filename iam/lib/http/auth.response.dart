// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:iam/iam.dart';
import 'package:iam/model/captcha_model.dart';
import 'package:iam/model/mer_login.dart';

class AuthResponse {
  static Future<AuthModel> auth(
      {required String code, required String pid}) async {
    try {
      AuthModel? item;
      Map<String, dynamic> res = await BaseDio.getInstance().post(
        url:
            "/iam/api/merchant/${ServiceGlobal.instance.merchantId}/provider/$pid/auth/?code=$code",
      );
      item = AuthModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<OauthModel> oauth(
      {required String clientId,
      required String grantType,
      required String clientSecret}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "client_id": clientId,
        "grant_type": grantType,
        "client_secret": clientSecret,
      })
        ..removeWhere((key, value) => value == null);

      OauthModel? item;
      Map<String, dynamic> res = await BaseDio.getInstance().post(
        url:
            "/iam/api/merchant/${ServiceGlobal.instance.merchantId}/oauth/token",
        params: params,
      );
      item = OauthModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<CaptchaModel> getCaptcha() async {
    try {
      Map<String, dynamic> params = Map.from({
        "height": 40,
        "width": 120,
      })
        ..removeWhere((key, value) => value == null);

      CaptchaModel? item;
      Map<String, dynamic> res = await BaseDio.getInstance().get(
        url: "/iam/api/merchant/${ServiceGlobal.instance.merchantId}/captcha/",
        params: params,
      );
      item = CaptchaModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<MerLogin> merLogin(
      {required String? id,
      required String? captcha,
      required String? username,
      required String? password}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "id": id,
        "captcha": captcha,
        "username": username,
        "password": password,
      })
        ..removeWhere((key, value) => value == null);

      MerLogin? item;
      Map<String, dynamic> res = await BaseDio.getInstance().post(
        url: "/iam/api/merchant/${ServiceGlobal.instance.merchantId}/login/",
        params: params,
      );
      item = MerLogin.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
