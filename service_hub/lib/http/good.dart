import 'package:service_package/service_package.dart';

import '../service_hub.dart';

class GoodResponse {
  static String goodUrl =
      '/service-hub/api/merchant/${ServiceGlobal.instance.merchantId}/good';

  static Future<List<GoodItem>?> getGoods(
      {List? uid,
      List? link,
      List? info,
      List? file,
      String? search,
      int? skip,
      int? size,
      int? cursor}) async {
    try {
      Map<String, dynamic> params = Map.from({
        'uid': uid,
        'link': link,
        'info': info,
        'file': file,
        'search': search,
        'skip': skip,
        'size': size,
        'cursor': cursor,
      }..removeWhere((key, value) => value == null));

      List res = await BaseDio.getInstance().get(url: goodUrl, params: params);
      List<GoodItem> goods = [];
      for (var item in res) {
        goods.add(GoodItem.fromJson(item));
      }
      return goods;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
