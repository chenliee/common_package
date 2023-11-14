import 'package:iam/model/auth_model.dart';
import 'package:service_package/service_package.dart';

class AuthResponse {
  static Future auth({required String code, required String pid}) async {
    String authUrl =
        '/iam/api/merchant/${ServiceGlobal.instance.merchantId}/provider/$pid/auth/';
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: '$authUrl?code=$code');
      AuthModel authModel = AuthModel.fromJson(res);
      return authModel;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future auth123() async {
    String authUrl =
        '/iam/api/merchant/${ServiceGlobal.instance.merchantId}/login';
    try {
      await BaseDio.getInstance().post(url: authUrl, params: {
        "id": "string",
        "captcha": "string",
        "username": "string",
        "password": "string"
      });
      return 1;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
