import 'package:marketing/marketing.dart';
import 'package:service_package/service_package.dart';

class RechargeResponse {
  static const String _baseUrl = '/marketing/user/me/recharge';
  static const String rechargeList = '$_baseUrl/list';
  static const String rechargeLog = '$_baseUrl/logs';
  static const String rechargePay = '$_baseUrl/pay';

  static Future<List<RechargeItem>?> getRechargeList({int? page}) async {
    try {
      Map<String, dynamic> params = page == null
          ? {}
          : {
              'page': page,
              'pageSize': ServiceGlobal.instance.pageSize,
            };
      List<RechargeItem> list = [];
      List<dynamic> map =
          await BaseDio.getInstance().get(url: rechargeList, params: params);
      for (dynamic item in map) {
        list.add(RechargeItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<RechargeLogItem>?> getRechargeRecord({int? page}) async {
    try {
      Map<String, dynamic> params = page == null
          ? {}
          : {
              'page': page,
              'pageSize': ServiceGlobal.instance.pageSize,
            };
      List<RechargeLogItem> list = [];
      Map map =
          await BaseDio.getInstance().get(url: rechargeLog, params: params);
      List<dynamic> jsonList = map['list'];
      for (dynamic item in jsonList) {
        list.add(RechargeLogItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getRechargePay({required num id, required String uid}) async {
    try {
      Map<String, dynamic> params = Map.from({
        'id': id,
        'userId': uid,
      }..removeWhere((key, value) => value == null));

      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: rechargePay, params: params);
      return res;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
