import 'package:service_package/service_package.dart';

import '../gold.dart';

class PositionResponse {
  static String positionUrl =
      '/gold/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/position';
  static String advertUrl =
      '/gold/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/advert/position';

  static Future getAllPosition() async {
    try {
      List<PositionCode> list = [];
      List<dynamic> jsonLists =
          await BaseDio.getInstance().get(url: positionUrl);
      for (var item in jsonLists) {
        list.add(PositionCode.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getPositionList({required String position}) async {
    try {
      List<PositionItem> list = [];
      List<dynamic> jsonLists =
          await BaseDio.getInstance().get(url: '$advertUrl/$position/',isApi:false);
      for (var item in jsonLists) {
        list.add(PositionItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
