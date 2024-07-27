import 'package:macauscholar/model/room_item.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
/// package:macauscholar/model/room_item.dart
@ApiGen('/course', file: 'RoomResponse', dio: 'MacauDio')
abstract class Order {
  @ApiGen(
    '/api/room/\$id',
    method: ApiGen.GET,
    target: 'RoomItem',
  )
  Future<RoomItem> getRoomInfo({required String id});
}
