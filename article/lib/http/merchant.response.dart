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
      Map<String, dynamic> res = await ArticleDio.getInstance().get(
        url:
            "/article/api/merchant/${ServiceGlobal.instance.merchantId}/article/$id",
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
      Map<String, dynamic> res = await ArticleDio.getInstance().get(
        url:
            "/article/api/merchant/${ServiceGlobal.instance.merchantId}/project/$project/category/$id/article/$art",
      );
      item = ArticleItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
