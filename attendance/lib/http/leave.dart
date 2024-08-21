import 'package:attendance/attendance.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:attendance/attendance.dart
/// package:attendance/model/leave_list_item.dart
/// package:attendance/model/leave_detail.dart
@ApiGen('/attendance', file: 'LeaveResponse', dio: 'BaseDio')
abstract class Leave {
  @ApiGen(
    '/api/project/\$project/rule/\$rule/type/\$type/leave',
    params: {
      'member': '@C_member',
      'from': '@C_from',
      'to': '@C_to',
      'attachment': '@C_attachment',
      'ext': '@C_ext',
    },
    target: 'LeaveItem',
    method: ApiGen.POST,
  )
  Future<LeaveItem> applyLeave({
    required String project,
    required String rule,
    required String type,
    required String member,
    required int from,
    required int to,
    Map<String, dynamic>? attachment,
    required Map<String, dynamic> ext,
  });

  @ApiGen(
    '/api/project/\$project/leave',
    params: {
      'page': '@C_page',
      'size': '@C_size',
      'sort': '@C_sort ?? \'{"createdAt":"desc"}\'',
      'filter': '@C_filter',
    },
    target: 'LeaveItem',
    method: ApiGen.GET,
  )
  Future<List<LeaveItem>?> leaveList(
      {Map? filter, required String? project, num? page, num? size, Map? sort});

  @ApiGen(
    '/api/project/\$project/leave/\$id',
    target: 'LeaveItem',
    method: ApiGen.GET,
  )
  Future<LeaveItem> leaveDetail(
      {required String? project, required String? id});

  @ApiGen(
    '/api/project/\$project/\$sn',
    params: {'status': '@C_status', 'ext': '@C_ext'},
    target: 'LeaveItem',
    method: ApiGen.PUT,
  )
  Future<LeaveItem> approvalLeave({
    required String? project,
    required String? sn,
    required String? status,
    Map? ext,
  });

  @ApiGen(
    '/api/project/\$project/rule/\$rule/punch_log/',
    params: {'filter': '@C_filter'},
    target: 'PunchLogItem',
    method: ApiGen.GET,
  )
  Future<List<PunchLogItem>?> getPunchLog({
    required String? project,
    required String? rule,
    Map? filter,
  });

  @ApiGen(
    '/api/project/\$project/rule/\$rule/punch_log/',
    params: {'date': '@C_date', 'uid': '@C_uid', 'ext': '@C_ext'},
    target: 'PunchLogItem',
    method: ApiGen.POST,
  )
  Future<PunchLogItem> addPunchLog({
    required String? project,
    required String? rule,
    required String? date,
    required String? uid,
    required Map? ext,
  });
}
