import 'package:service_package/service_package.dart';

import '../service_hub.dart';

class GoodResponse {
  static final _baseUrl =
      '/service-hub/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}';
  static String goodUrl =
      '/service-hub/api/merchant/${ServiceGlobal.instance.merchantId}/good';
  static String categoryUrl = '$_baseUrl/category';

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

  static Future<GoodItem?> getGood({required String id, Map? condition}) async {
    try {
      Map<String, dynamic> params = Map.from(
          {'condition': condition}..removeWhere((key, value) => value == null));

      Map res =
          await BaseDio.getInstance().get(url: '$goodUrl/$id', params: params);
      GoodItem good = GoodItem.fromJson(res);
      return good;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<GoodItem>?> getCategoryGoods({
    required String category,
    dynamic condition,
    List? link,
    List? info,
    List? file,
    int? skip,
    int? size,
    String? search,
  }) async {
    try {
      Map<String, dynamic> params = Map.from({
        'condition': condition,
        'link': link,
        'info': info,
        'file': file,
        'search': search,
        'skip': skip,
        'size': size,
      }..removeWhere((key, value) => value == null));
      List res = await BaseDio.getInstance()
          .get(url: '$categoryUrl/$category/goods', params: params);
      List<GoodItem> list = [];
      for (var item in res) {
        list.add(GoodItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<CategoryItem>?> getCategory({
    List? info,
    List? file,
  }) async {
    try {
      Map<String, dynamic> params = Map.from({
        'info': info,
        'file': file,
      }..removeWhere((key, value) => value == null));
      List res =
          await BaseDio.getInstance().get(url: categoryUrl, params: params);
      List<CategoryItem> category = [];
      for (var item in res) {
        category.add(CategoryItem.fromJson(item));
      }
      return category;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
