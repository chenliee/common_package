import 'package:iam/model/auth_model.dart';
import 'package:service_package/service_package.dart';

class MyResponse {
  static Future auth({required String code, required String pid}) async {
    String authUrl =
        '/iam/api/merchant/${ServiceGlobal.mid}/provider/$pid/auth/';
    try {
      Map<String, dynamic> params = {};
      Map<String, dynamic> res = await BaseDio.getInstance()
          .post(url: '$authUrl?code=$code', params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      AuthModel authModel = AuthModel.fromJson(res['data']);
      return authModel;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
  }
}
