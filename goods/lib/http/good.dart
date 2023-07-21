import 'package:goods/goods.dart';
import 'package:service_package/service_package.dart';

class GoodResponse {
  static String categoryUrl =
      '/goods/api/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/getGoodsCategoryList';
  static String goodCustomAttrUrl =
      '/goods/api/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/getGoodsCustomAttrList';
  static String goodExtAttrUrl =
      '/goods/api/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/getGoodsExtAttrList';
  static String extAttrValueUrl = '/goods/api/getExtAttrValueList';

  static Future getGoodsCategoryList({required String code}) async {
    try {
      Map<String, dynamic> params = {
        "code": code,
      };
      List<GoodCategoryItem> list = [];
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: categoryUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
      for (var item in jsonList) {
        list.add(GoodCategoryItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getGoodsCustomAttrList() async {
    try {
      List<GoodCustomAttrItem> list = [];
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: goodCustomAttrUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
      for (var item in jsonList) {
        list.add(GoodCustomAttrItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getGoodsExtAttrList() async {
    try {
      List<GoodExtAttrItem> list = [];
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: goodExtAttrUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
      for (var item in jsonList) {
        list.add(GoodExtAttrItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getExtAttrValueList() async {
    try {
      List<ExtAttrValueItem> list = [];
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: extAttrValueUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
      for (var item in jsonList) {
        list.add(ExtAttrValueItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getGoodList({required String code}) async {
    List<GoodCategoryItem> res = [];
    List<ExtAttrValueItem> listA = [];
    List<GoodCustomAttrItem> listB = [];
    List<GoodExtAttrItem> listC = [];
    Future.wait([
      getGoodsCategoryList(code: code),
      getExtAttrValueList(),
      getGoodsCustomAttrList(),
      getGoodsExtAttrList(),
    ]).then((value) {
      res.add(value[0]);
      listA.addAll(value[1]);
      listB.addAll(value[2]);
      listC.addAll(value[3]);
    });

    List<GoodItem> goods = createGoodFromData(res, listC, listA, listB);
    return goods;
  }

  static Future getCategory({required String code}) async {
    List<GoodCategoryItem> res = await getGoodsCategoryList(code: code);
    Set<Category> categorySet = {};
    List<Category> categoryList = (categorySet
      ..addAll(res.map((e) => e.category!))
      ..toList()) as List<Category>;
    return categoryList;
  }

  static Future getCategoryGoods(
      {required num id, required String code}) async {
    List<GoodItem> goods = await getGoodList(code: code);
    List<GoodItem> res = [];
    for (GoodItem good in goods) {
      if (good.categoryId == id) {
        res.add(good);
      }
    }
    Map<num, List<GoodItem>> categoryGoods = {id: res};
    return categoryGoods;
  }
}
