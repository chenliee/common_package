import 'package:article/article.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:article/article.dart
@ApiGen('/article', file: 'MerchantResponse', dio: 'MerchantDio')
abstract class Merchant {
  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/article/\$id',
    method: ApiGen.GET,
    target: 'ArticleItem',
    isApi: false,
  )
  Future<ArticleItem?> getArt({required String id});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/project/\$project/category/\$id/article/\$art',
    method: ApiGen.GET,
    target: 'ArticleItem',
    isApi: false,
  )
  Future<ArticleItem?> getCategoryArt(
      {required String art, required String id, required String project});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/project/\$project/category/\$id/article',
    method: ApiGen.GET,
    target: 'ArticleMap',
    params: {'fkeys': '@C_fkeys'},
    isApi: false,
  )
  Future<ArticleMap?> getCategoryArtList(
      {required String id, required String project, List<String>? fkeys});
}
