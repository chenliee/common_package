
import 'package:macauscholar/model/tuition_order_model.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
/// package:macauscholar/model/tuition_order_model.dart
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
    target: 'TuitionOrderModel',
  )
  Future<List<TuitionOrderModel>> getOrderList(
      {int? page, Map? filter, int? size, String? keyword, bool disablePaging = false});


}
