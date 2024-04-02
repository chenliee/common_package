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

  static Future<List<SpikeItem>?> getSpikeActList() async {
    try {
      List<SpikeItem> list = [];
      List<dynamic> jsonList =
          await BaseDio.getInstance().get(url: seckillActUrl);
      for (dynamic item in jsonList) {
        list.add(SpikeItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<dynamic> getSpike({required int id}) async {
    late SpikeItem item;
    try {
      Map<String, dynamic> jsonList =
          await BaseDio.getInstance().get(url: '$seckillUrl/$id');
      item = SpikeItem.fromJson(jsonList);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return item;
  }

  static Future<GoodsItem?> getSpikeItem({required int goodId}) async {
    try {
      GoodsItem? item;
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$seckillGoodsUrl/$goodId');
      item = GoodsItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
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

  static Future<NewBie> existNewBie() async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: newBieUrl);
      NewBie item = NewBie.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
