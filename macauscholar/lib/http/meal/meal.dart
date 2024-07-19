import 'package:macauscholar/macauscholar.dart';
import 'package:service_package/api/api_gen.dart';
import 'package:service_package/service_package.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
@ApiGen('/meal', file: 'MealResponse', dio: 'MacauDio')
abstract class MenuClass {
  @ApiGen('/api/menu/',
      params: {
        'page': '@C_page',
        'size': '@C_size',
        'filter': '@C_filter',
      },
      method: ApiGen.GET,
      target: 'MenuItem')
  Future<List<MenuItem>> getMenuList({int? page, int? size, Map? filter});

  @ApiGen('/api/menu/\$menu', method: ApiGen.GET, target: 'MenuDetail')
  Future<MenuDetail> getMenuDetail({required num menu});

  @ApiGen('/api/section/',
      params: {
        'menu': '@C_menu',
      },
      method: ApiGen.GET,
      target: 'MenuSection')
  Future<List<MenuSection>> menuSection({required int menu});

  @ApiGen('/api/order/priceTable/',
      params: '@C_data', method: ApiGen.POST, target: 'MenuCart')
  Future<MenuCart> addMenuShopCart({required dynamic data});

  @ApiGen('/api/order/shoppingMode/',
      params: '@C_data', method: ApiGen.POST, target: 'MealOrderItem')
  Future<List<MealOrderItem>> confirmMenuOrder({required dynamic data});

  @ApiGen('/api/order/\$order/pay', method: ApiGen.POST, target: 'PayModel')
  Future<PayModel> payMenuOrder({required String order});
}
