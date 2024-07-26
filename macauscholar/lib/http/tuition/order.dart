import 'package:macauscholar/model/tuition_order_item.dart';
import 'package:order/model/pay_model.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
/// package:order/model/pay_model.dart
@ApiGen('/tuition', file: 'TuitionOrderResponse', dio: 'MacauDio')
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
    target: 'TuitionOrderItem',
  )
  Future<List<TuitionOrderItem>> getOrderList(
      {int? page,
      Map? filter,
      int? size,
      String? keyword,
      bool disablePaging = false});

  @ApiGen(
    '/api/order/\$id',
    method: ApiGen.GET,
    target: 'TuitionOrderItem',
  )
  Future<TuitionOrderItem> getOrderDetail({required String id});

  @ApiGen(
    '/api/order/\$orderCode/pay',
    method: ApiGen.POST,
    target: 'PayModel',
    params: {},
  )
  Future<PayModel> pay({required String orderCode});
}
