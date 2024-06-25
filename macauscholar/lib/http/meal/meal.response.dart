// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/macauscholar.dart';
import 'package:macauscholar/model/menus_model.dart';
import 'package:macauscholar/model/menu_section.dart';
import 'package:macauscholar/model/menu_detail.dart';
import 'package:macauscholar/model/menu_cart.dart';

class MealResponse {
  static Future<List<FoodMenus>> getMenuList(
      {int? page, int? size, Map<dynamic, dynamic>? filter}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "page": page,
        "size": size,
        "filter": filter,
      })
        ..removeWhere((key, value) => value == null);

      List<FoodMenus> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/meal/api/menu/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(FoodMenus.fromJson(item));
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


      MenuCart? item;
      Map<String, dynamic> res = await MacauDio.getInstance().post(
        url: "/meal/api/order/priceTable",
        params: data,
      );
      item = MenuCart.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
