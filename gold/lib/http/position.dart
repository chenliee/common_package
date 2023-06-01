import 'package:service_package/service_package.dart';

import '../gold.dart';

class PositionResponse {
  static String positionUrl =
      '/gold/api/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/position';
  static String advertUrl =
      '/gold/api/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/advert/position';

  static Future getAllPosition() async {
    try {
      List<PositionCode> list = [];
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: positionUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonLists = res['data'];
      for (var item in jsonLists) {
        list.add(PositionCode.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
  }

  static Future getPositionList({required String position}) async {
    try {
      List<PositionItem> list = [];
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$advertUrl/$position');
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonLists = res['data'];
      for (var item in jsonLists) {
        list.add(PositionItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
  }
}
