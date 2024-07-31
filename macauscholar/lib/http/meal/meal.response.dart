// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/macauscholar.dart';
import 'package:order/model/pay_model.dart';

class MealResponse {
  static Future<List<MenuItem>> getMenuList(
      {int? page, int? size, Map<dynamic, dynamic>? filter}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "page": page,
        "size": size,
        "filter": filter,
      })
        ..removeWhere((key, value) => value == null);

      List<MenuItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/meal/api/menu/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(MenuItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<MenuDetail> getMenuDetail({required num menu}) async {
    try {
      MenuDetail? item;
      Map<String, dynamic> res = await MacauDio.getInstance().get(
        url: "/meal/api/menu/$menu",
      );
      item = MenuDetail.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<MenuSection>> menuSection({required int menu}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "menu": menu,
      })
        ..removeWhere((key, value) => value == null);

      List<MenuSection> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/meal/api/section/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(MenuSection.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<MenuCart> addMenuShopCart({required dynamic data}) async {
    try {
      dynamic params = data;

      MenuCart? item;
      Map<String, dynamic> res = await MacauDio.getInstance().post(
        url: "/meal/api/order/priceTable/",
        params: params,
      );
      item = MenuCart.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<MealOrderItem>> confirmMenuOrder(
      {required dynamic data}) async {
    try {
      dynamic params = data;

      List<MealOrderItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().post(
        url: "/meal/api/order/shoppingMode/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(MealOrderItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<PayModel> payMenuOrder({required String order}) async {
    try {
      PayModel? item;
      Map<String, dynamic> res = await MacauDio.getInstance().post(
        url: "/meal/api/order/$order/pay",
      );
      item = PayModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
