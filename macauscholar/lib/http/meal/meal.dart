import 'package:macauscholar/model/menu_cart.dart';
import 'package:macauscholar/model/menu_detail.dart';
import 'package:macauscholar/model/menu_section.dart';
import 'package:macauscholar/model/menus_model.dart';
import 'package:service_package/api/api_gen.dart';
import 'package:service_package/service_package.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
/// package:macauscholar/model/menus_model.dart
/// package:macauscholar/model/menu_section.dart
/// package:macauscholar/model/menu_detail.dart
/// package:macauscholar/model/menu_cart.dart
@ApiGen('/meal', file: 'MealResponse', dio: 'MacauDio')
abstract class MenuClass {
  @ApiGen('/api/menu/',
      params: {
        'page': '@C_page',
        'size': '@C_size',
        'filter': '@C_filter',
      },
      method: ApiGen.GET,
      target: 'FoodMenus')
  Future<List<FoodMenus>> getMenuList({int? page, int? size, Map? filter});

  @ApiGen('/api/menu/\$menu', method: ApiGen.GET, target: 'MenuDetail')
  Future<MenuDetail> getMenuDetail({required num menu});

  @ApiGen('/api/section/',
      params: {
        'menu': '@C_menu',
      },
      method: ApiGen.GET,
      target: 'MenuSection')
  Future<List<MenuSection>> menuSection({required int menu});


}
