import 'package:macauscholar/model/course_order_item.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/model/course_order_item.dart
/// package:macauscholar/macauscholar.dart
@ApiGen('/course', file: 'CourseOrderResponse', dio: 'MacauDio')
abstract class Order {
  @ApiGen(
    '/api/order/',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'sort': '@C_sort ?? \'{"createdAt": "desc"}\'',
      'filter': '@C_filter',
      'keyword': '@C_keyword'
    },
    method: ApiGen.GET,
    target: 'CourseOrderItem',
  )
  Future<List<CourseOrderItem>> getOrderList(
      {required int page,
      String? sort,
      Map? filter,
      int? size,
      String? keyword});

  @ApiGen(
    '/api/order/\$id',
    method: ApiGen.GET,
    target: 'CourseOrderItem',
  )
  Future<CourseOrderItem> getOrderDetail({required String id});
}
