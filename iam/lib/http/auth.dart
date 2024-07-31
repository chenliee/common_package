import 'package:iam/iam.dart';
import 'package:iam/model/captcha_model.dart';
import 'package:iam/model/mer_login.dart';
import 'package:service_package/service_package.dart';

/// package:service_package/service_package.dart
/// package:iam/iam.dart
/// package:iam/model/captcha_model.dart
/// package:iam/model/mer_login.dart
@ApiGen('/iam', file: 'AuthResponse')
abstract class AuthApi {
  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/provider/\$pid/auth/?code=\$code',
    method: ApiGen.POST,
    target: 'AuthModel',
  )
  Future<AuthModel> auth({required String code, required String pid});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/oauth/token',
    method: ApiGen.POST,
    params: {"client_id": "@C_clientId", "grant_type": "@C_grantType", "client_secret": "@C_clientSecret"},
    target: 'OauthModel',
  )
  Future<OauthModel> oauth({
    required String clientId,
    required String grantType,
    required String clientSecret,
  });

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/captcha/',
    params: {
      "height": 40,
      "width": 120,
    },
    method: ApiGen.GET,
    target: 'CaptchaModel',
  )
  Future<CaptchaModel> getCaptcha();

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/login/',
    params: {
      "id": "@C_id",
      "captcha": "@C_captcha",
      "username": "@C_username",
      "password": "@C_password",
    },
    method: ApiGen.POST,
    target: 'MerLogin',
  )
  Future<MerLogin> merLogin({required String? id, required String? captcha, required String? username, required String? password});
}

// static Future auth123() async {
// String authUrl =
//     '/iam/api/merchant/${ServiceGlobal.instance.merchantId}/login';
// try {
// await BaseDio.getInstance().post(url: authUrl, params: {
// "id": "string",
// "captcha": "string",
// "username": "string",
// "password": "string"
// });
// return 1;
// } catch (e) {
// Debug.printMsg(e, StackTrace.current);
// rethrow;
// }
// }
