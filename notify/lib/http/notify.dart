import 'package:service_package/service_package.dart';

import '../flutter_notify.dart';
import '../model/notify_model.dart';

class NotifyRequest {
  static String url =
      '/notify/api/merchant/${ServiceGlobal.instance.merchantId}/channel';
  static String captchaUrl =
      '/notify/api/merchant/${ServiceGlobal.instance.merchantId}/captcha/';
  static String notifyUrl =
      '/notify/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/notify/';

  static Future<RegistrationModel?> deviceRegistration(
      {required String cid,
      String? uuid,
      String? code,
      required String token,
      required String package}) async {
    try {
      Map<String, dynamic>? params = Map.from({
        'package': package,
        'token': token,
        'uuid': uuid,
        'code': code
      }..removeWhere((key, value) => value == null));
      final res = await BaseDio.getInstance()
          .post(url: '$url/$cid/device-registration', params: params);
      RegistrationModel authModel = RegistrationModel.fromJson(res);
      return authModel;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<BindModel?> deviceBinging(
      {required String cid,
      required String uuid,
      required String code,
      required String package,
      required token}) async {
    try {
      Map<String, dynamic>? params = {
        'package': package,
        'token': token,
        'uuid': uuid,
        'code': code,
      };
      final res = await BaseDio.getInstance()
          .post(url: '$url/$cid/device-binding', params: params);
      BindModel bindModel = BindModel.fromJson(res);
      return bindModel;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getCaptcha({
    String width = "120",
    String height = "40",
  }) async {
    try {
      Map<String, dynamic>? params = {'width': width, 'height': height};
      final res =
          await BaseDio.getInstance().get(url: captchaUrl, params: params);
      CaptchaModel captchaModel = CaptchaModel.fromJson(res);
      return captchaModel;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<NotifyModel>> notifyList(
      {required num page, required num size, Map? filter}) async {
    try {
      List<NotifyModel> list = [];
      Map<String, dynamic>? params = {
        "page": page,
        "size": size,
        'filter': filter,
      };
      final res =
          await BaseDio.getInstance().get(url: notifyUrl, params: params);
      for (var item in res) {
        list.add(NotifyModel.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
