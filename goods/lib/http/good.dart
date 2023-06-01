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
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
      for (var item in jsonList) {
        list.add(GoodCategoryItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
  }

  static Future getGoodsCustomAttrList() async {
    try {
      List<GoodCustomAttrItem> list = [];
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: goodCustomAttrUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
      for (var item in jsonList) {
        list.add(GoodCustomAttrItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
  }

  static Future getGoodsExtAttrList() async {
    try {
      List<GoodExtAttrItem> list = [];
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: goodExtAttrUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
      for (var item in jsonList) {
        list.add(GoodExtAttrItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
  }

  static Future getExtAttrValueList() async {
    try {
      List<GoodCustomAttrItem> list = [];
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: goodCustomAttrUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
      for (var item in jsonList) {
        list.add(GoodCustomAttrItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
  }

  static Future getGoodList({required String code}) async {
    List<GoodCategoryItem> res = await getGoodsCategoryList(code: code);
  }
}
