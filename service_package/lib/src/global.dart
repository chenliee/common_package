import 'package:service_package/service_package.dart';

class ServiceGlobal {
  late String merchantId;

  late String projectId;

  late String uid;

  late String token;

  late String shopId;

  late num pageSize;

  late bool toastCustomize;

  factory ServiceGlobal() => _instance;

  static final ServiceGlobal _instance = ServiceGlobal._internal();

  static ServiceGlobal get instance => _instance;

  ServiceGlobal._internal() {
    merchantId = '';
    projectId = '';
    uid = '';
    token = '';
    shopId = '';
    pageSize = 10;
    toastCustomize = false;
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

  static Future<void> initToken({
    required String uid,
    required String token,
  }) async {
    ServiceGlobal.instance
      ..uid = uid
      ..token = token;
    BaseDio.getInstance().options.headers = {
      'content-type': 'application/json',
      'Authorization': 'Bearer234 $token'
    };
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

  static Future<Map<String, dynamic>> allAdData() async {
    try {
      Response result = await Dio().get(
          'https://storage.macauscholar.com/public/app-data/mr_good_ad.json');
      Map<String, dynamic> data = result.data;
      return data;
    } catch (err) {
      return {
        "homeSection": [
          {
            "imgUrl":
                "https://storage.uat.macauscholar.com/makmakshop/1665558917324.%E8%92%99%E7%89%88%E7%BB%84%20101.png",
            "routeUrl": ""
          },
        ],
        "secondaryHomeBanner": [
          {
            "imgUrl":
                "https://storage.uat.macauscholar.com/makmakshop/1665558917324.%E8%92%99%E7%89%88%E7%BB%84%20101.png",
            "routeUrl": ""
          },
        ],
        "groupBuyHomeBanner": [
          {
            "imgUrl":
                "https://storage.uat.macauscholar.com/makmakshop/1665558917324.%E8%92%99%E7%89%88%E7%BB%84%20101.png",
            "routeUrl": ""
          }
        ],
        "memberCenterAd": {
          "imgUrl":
              "https://storage.uat.macauscholar.com/makmakshop/1665558937985.%E8%92%99%E7%89%88%E7%BB%84%20104.png",
          "routeUrl": ""
        }
      };
    }
  }
}
