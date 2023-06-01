import 'package:marketing/marketing.dart';
import 'package:service_package/service_package.dart';

class SpikeActResponse {
  static String seckillActUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/seckillAct';
  static String seckillUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/seckill';
  static String seckillGoodsUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/seckillGoods';
  static String orderDiscountUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/order';
  static String newBieUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/newBie';

  static Future<dynamic> getSpikeActList() async {
    List<SpikeList> list = [];
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: seckillActUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
      for (dynamic item in jsonList) {
        list.add(SpikeList.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
    return list;
  }

  static Future<dynamic> getSpike({required int id}) async {
    List<SpikeList> list = [];
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$seckillUrl/$id');
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
      for (dynamic item in jsonList) {
        list.add(SpikeList.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
    return list;
  }

  static Future getSpikeItem({required int goodId}) async {
    late SpikeItem item;
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$seckillGoodsUrl/$goodId');
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      item = SpikeItem.fromJson(res['data']);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
    return item;
  }

  static Future getOrderScore({num? total}) async {
    late OrderScore orderPoint;
    try {
      Map<String, dynamic> params = {'total': total};
      if (ServiceGlobal.shopId.isNotEmpty) {
        params['shopId'] = ServiceGlobal.shopId;
      }
      Map<String, dynamic> res = await BaseDio.getInstance()
          .post(url: orderDiscountUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      orderPoint = OrderScore.fromJson(res);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
    return orderPoint;
  }

  static Future<bool> existNewBie() async {
    bool isNewBie = false;
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: newBieUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return false;
      }
      isNewBie = res['data']['isOpen'];
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
    return isNewBie;
  }
}
