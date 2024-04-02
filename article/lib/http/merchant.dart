import 'package:service_package/service_package.dart';

import '../article.dart';

class MerchantResponse {
  static String getArticleURL =
      '/article/api/merchant/${ServiceGlobal.instance.merchantId}/article';

  static Future<ArticleItem?> getArt({required String id}) async {
    final res = await BaseDio.getInstance()
        .get(url: '$getArticleURL/$id', isApi: false);
    ArticleItem item = ArticleItem.fromJson(res);
    return item;
  }
}
