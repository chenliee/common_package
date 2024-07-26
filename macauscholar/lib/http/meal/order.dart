import 'package:macauscholar/macauscholar.dart';
import 'package:order/model/pay_model.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
/// package:order/model/pay_model.dart
@ApiGen('/meal', file: 'MealOrderResponse', dio: 'MacauDio')
abstract class Order {
  @ApiGen(
    '/api/order/',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'filter': '@C_filter',
      'keyword': '@C_keyword',
      'disablePaging': '@C_disablePaging'
    },
    method: ApiGen.GET,
    target: 'MealOrderItem',
  )
  Future<List<MealOrderItem>> getOrderList(
      {int? page,
      Map? filter,
      int? size,
      String? keyword,
      bool disablePaging = false});

  @ApiGen(
    '/api/order/item/',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'filter': '@C_filter',
      'keyword': '@C_keyword',
      'isDel': '@C_isDel'
    },
    method: ApiGen.GET,
    target: 'OrderItem',
  )
  Future<List<OrderItem>> getOrderItem(
      {int? page, Map? filter, int? size, String? keyword, bool? isDel});

  @ApiGen(
    '/api/order/item/\$id',
    params: {
      'isTrueDel': '@C_isTrueDel',
      'isDel': '@C_isDel',
    },
    method: ApiGen.DELETE,
    target: 'OrderItem',
  )
  Future<OrderItem> deleteOrderItem(
      {required num id, bool isDel = true, bool isTrueDel = false});

  @ApiGen(
    '/api/order/\$id',
    method: ApiGen.GET,
    target: 'MealOrderItem',
  )
  Future<MealOrderItem> getOrderDetail({required String id});

  @ApiGen(
    '/api/order/\$orderCode/pay',
    method: ApiGen.POST,
    target: 'PayModel',
    params: {},
  )
  Future<PayModel> pay({required String orderCode});
}
