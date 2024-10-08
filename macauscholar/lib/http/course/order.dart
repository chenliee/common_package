import 'package:macauscholar/model/attendance_student.dart';
import 'package:macauscholar/model/course_order_item.dart';
import 'package:macauscholar/model/voucher_item.dart';
import 'package:order/model/pay_model.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/model/course_order_item.dart
/// package:macauscholar/macauscholar.dart
/// package:order/model/pay_model.dart
/// package:macauscholar/model/voucher_item.dart
/// package:macauscholar/model/attendance_student.dart
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

  @ApiGen(
    '/api/voucher/',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'sort': '@C_sort ?? \'{"createdAt": "desc"}\'',
      'filter': '@C_filter',
      'keyword': '@C_keyword'
    },
    method: ApiGen.GET,
    target: 'VoucherItem',
  )
  Future<List<VoucherItem>> getVoucherList(
      {required int page,
      String? sort,
      Map? filter,
      int? size,
      String? keyword});

  @ApiGen(
    '/api/pay_basic/',
    method: ApiGen.POST,
    target: 'PayModel',
    params: {
      "orderCode": "@C_orderCode",
      "type": "@C_type",
    },
  )
  Future<PayModel> pay({required String orderCode, required String type});

  @ApiGen(
    '/api/voucher/attendance',
    method: ApiGen.PUT,
    target: 'AttendanceStudent',
    params: {
      "student": "@C_student",
      "lesson": "@C_lesson",
      "status": "@C_status",
      "class_": "@C_classId",
      "voucher": "@C_voucher",
      "OaRecord": "@C_OaRecord",
    },
  )
  Future<AttendanceStudent> attendance({
    required String student,
    required String lesson,
    required String status,
    String? classId,
    String? voucher,
    String? OaRecord,
  });
}
