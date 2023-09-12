import 'package:marketing/marketing.dart';
import 'package:service_package/service_package.dart';

class SpikeActResponse {
  static String seckillActUrl =
      '/marketing/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/seckillAct';
  static String seckillUrl =
      '/marketing/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/seckill';
  static String seckillGoodsUrl =
      '/marketing/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/seckillGoods';
  static String orderDiscountUrl =
      '/marketing/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/order';
  static String newBieUrl =
      '/marketing/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/newBie';

  static Future<dynamic> getSpikeActList() async {
    List<SpikeList> list = [];
    try {
      List<dynamic> jsonList =
          await BaseDio.getInstance().get(url: seckillActUrl);
      for (dynamic item in jsonList) {
        list.add(SpikeList.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return list;
  }

  static Future<dynamic> getSpike({required int id}) async {
    List<SpikeList> list = [];
    try {
      List<dynamic> jsonList =
          await BaseDio.getInstance().get(url: '$seckillUrl/$id');
      for (dynamic item in jsonList) {
        list.add(SpikeList.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return list;
  }

  static Future getSpikeItem({required int goodId}) async {
    late SpikeItem item;
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$seckillGoodsUrl/$goodId');
      item = SpikeItem.fromJson(res);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return item;
  }

  static Future getOrderScore({num? total}) async {
    late OrderScore orderPoint;
    try {
      Map<String, dynamic> params = {'total': total};
      if (ServiceGlobal.instance.shopId.isNotEmpty) {
        params['shopId'] = ServiceGlobal.instance.shopId;
      }
      Map<String, dynamic> res = await BaseDio.getInstance()
          .post(url: orderDiscountUrl, params: params);
      orderPoint = OrderScore.fromJson(res);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return orderPoint;
  }

  static Future<bool> existNewBie() async {
    bool isNewBie = false;
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: newBieUrl);
      isNewBie = res['isOpen'];
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return isNewBie;
  }
}
