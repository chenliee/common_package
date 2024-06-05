import 'package:service_package/service_package.dart';

class ServiceGlobal {
  late String merchantId;

  late String projectId;

  late String uid;

  late String token;

  late String merchantToken;

  late String shopId;

  late num pageSize;

  late bool toastCustomize;

  factory ServiceGlobal() => _instance;

  static final ServiceGlobal _instance = ServiceGlobal._internal();

  static ServiceGlobal get instance => _instance;

  late String deviceAccessToken;

  ServiceGlobal._internal() {
    merchantId = '';
    projectId = '';
    uid = '';
    token = '';
    merchantToken = '';
    shopId = '';
    pageSize = 10;
    toastCustomize = false;
    deviceAccessToken = '';
  }

  static Future<void> initDistributor({
    required String mid,
    required String pid,
    bool toastCustomize = false,
    String? shopId,
  }) async {
    ServiceGlobal.instance
      ..projectId = pid
      ..merchantId = mid
      ..shopId = shopId ?? ''
      ..toastCustomize = toastCustomize;
  }

  static Future<void> initShopId({required String? shopId}) async {
    ServiceGlobal.instance.shopId = shopId ?? '';
  }

  static Future<void> initToken({
    required String uid,
    required String token,
  }) async {
    ServiceGlobal.instance
      ..uid = uid
      ..token = token;
    BaseDio.getInstance().options.headers = {
      'content-type': 'application/json',
      'Authorization': 'Bearer $token'
    };
  }

  static Future<void> initDeviceAccessToken({
    required String deviceAccessToken,
  }) async {
    ServiceGlobal.instance..deviceAccessToken = deviceAccessToken;
  }

  static Future<void> initUnauthorized({required Function function}) async {
    BaseDio.getInstance().onUnauthorized = function;
  }

  static clearToken() {
    ServiceGlobal.instance
      ..token = ''
      ..uid = '';
    BaseDio.getInstance().options.headers = {
      'content-type': 'application/json'
    };
  }
}
