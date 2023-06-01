import 'package:dio/dio.dart';

class ServiceGlobal {
  static ServiceGlobal? _instance;

  static String mid = '';

  ///商户
  static String pid = '';

  ///项目
  static String uid = '';

  ///uid
  static String token = '';

  ///token

  static String shopId = '';
  static num pageSize = 10;

  static ServiceGlobal getInstance() {
    _instance ??= ServiceGlobal();
    return _instance!;
  }

  static Future<void> initDistributor({
    required String mid,
    required String pid,
    String? shopId,
  }) async {
    ServiceGlobal.pid = pid;
    ServiceGlobal.mid = mid;
    ServiceGlobal.shopId = shopId ?? '';
    ServiceGlobal.getInstance();
  }

  static Future<void> initToken({
    required String uid,
    required String token,
  }) async {
    ServiceGlobal.token = token;
    ServiceGlobal.uid = uid;
    ServiceGlobal.getInstance();
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
