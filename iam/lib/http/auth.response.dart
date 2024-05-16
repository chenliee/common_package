// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:iam/iam.dart';

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
}
