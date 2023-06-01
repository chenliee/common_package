import 'package:iam/model/auth_model.dart';
import 'package:service_package/service_package.dart';

class MeResponse {
  static String authUrl =
      '/iam/merchant/${ServiceGlobal.mid}/provider/wxwork/auth';

  static Future auth({required String code}) async {
    try {
      Map<String, dynamic> params = {
        "code": code,
      };
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: authUrl, params: params);
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
