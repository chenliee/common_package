import 'package:service_hub/service_hub.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:service_hub/service_hub.dart
@ApiGen('/service-hub', file: 'GoodResponse')
abstract class Good {
  static const url = '/api/merchant/\${ServiceGlobal.instance.merchantId}';

  @ApiGen('$url/good', method: ApiGen.GET, target: 'GoodItem', params: {
    'uid': "@C_uid",
    'link': "@C_link",
    'info': "@C_info",
    'file': "@C_file",
    'search': "@C_search",
    'skip': "@C_skip",
    'size': "@C_size",
    'cursor': "@C_cursor",
  })
  Future<List<GoodItem>?> getGoods(
      {List? uid,
      List? link,
      List? info,
      List? file,
      String? search,
      int? skip,
      int? size,
      int? cursor});

  @ApiGen(
      '$url/project/\${ServiceGlobal.instance.projectId}/category/\$category/goods',
      method: ApiGen.GET,
      target: 'GoodItem',
      params: {
        'condition': "@C_condition",
        'link': "@C_link",
        'info': "@C_info",
        'file': "@C_file",
        'search': "@C_search",
        'skip': "@C_skip",
        'size': "@C_size",
      })
  Future<List<GoodItem>?> getCategoryGoods({
    required String category,
    dynamic condition,
    List? link,
    List? info,
    List? file,
    int? skip,
    int? size,
    String? search,
  });

  @ApiGen('$url/project/\${ServiceGlobal.instance.projectId}/category',
      method: ApiGen.GET,
      target: 'CategoryItem',
      params: {'info': "@C_info", 'file': "@C_file"})
  Future<List<CategoryItem>?> getCategory({
    List? info,
    List? file,
  });

  @ApiGen('$url/project/\${ServiceGlobal.instance.projectId}/newGoods',
      method: ApiGen.GET,
      target: 'NewGoodItem',
      params: {
        'info': "@C_info",
        'file': "@C_file",
        'condition': "@C_condition",
        'link': "@C_link",
        'category': "@C_category",
      })
  Future<List<NewGoodItem>?> getNewGoods({
    dynamic condition,
    List? link,
    List? info,
    List? file,
    required List<String?> category,
  });

  @ApiGen(
    '$url/good/\$id',
    method: ApiGen.GET,
    target: 'GoodItem',
    params: {
      'condition': "@C_condition",
    },
  )
  Future<GoodItem?> getGood({required String id, Map? condition});

  @ApiGen('$url/key/\$key/goods',
      method: ApiGen.GET,
      target: 'GoodItem',
      params: {
        'condition': "@C_condition",
        'link': "@C_link",
        'info': "@C_info",
        'file': "@C_file",
        'value': "@C_value",
        'key': "@C_key",
        'skip': "@C_skip",
        'size': "@C_size",
      })
  Future<List<GoodItem>?> getKeyGoods({
    String? value,
    dynamic condition,
    required String key,
    List? link,
    List? info,
    List? file,
    int? skip,
    int? size,
  });

  @ApiGen('$url/attribute/\$attribute/option/\$option',
      method: ApiGen.GET, target: 'Attribute')
  Future<Attribute> getAttribute({
    required String option,
    required String attribute,
  });
}
