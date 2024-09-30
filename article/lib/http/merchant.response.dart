// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:article/article.dart';
import 'package:service_package/service_package.dart';

class MerchantResponse {
  static Future<ArticleItem?> getArt({required String id}) async {
    try {
      ArticleItem? item;
      Map<String, dynamic> res = await MerchantDio.getInstance().get(
        url:
            "/article/api/merchant/${ServiceGlobal.instance.merchantId}/article/$id",
        isApi: false,
      );
      item = ArticleItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<ArticleItem?> getCategoryArt(
      {required String art,
      required String id,
      required String project}) async {
    try {
      ArticleItem? item;
      Map<String, dynamic> res = await MerchantDio.getInstance().get(
        url:
            "/article/api/merchant/${ServiceGlobal.instance.merchantId}/project/$project/category/$id/article/$art",
        isApi: false,
      );
      item = ArticleItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<ArticleMap?> getCategoryArtList({
    required String id,
    required String project,
    int? page,
    int? size,
    List<String>? fkeys,
  }) async {
    try {
      Map<String, dynamic> params = Map.from({
        "fkeys": fkeys,
        "page": page,
        "size": size,
      })
        ..removeWhere((key, value) => value == null);

      ArticleMap? item;
      Map<String, dynamic> res = await MerchantDio.getInstance().get(
        url:
            "/article/api/merchant/${ServiceGlobal.instance.merchantId}/project/$project/category/$id/article",
        params: params,
        isApi: false,
      );
      item = ArticleMap.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
