import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:attendance/attendance.dart
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
    method: ApiGen.POST,
  )
  Future applyLeave({
    required String project,
    required String rule,
    required String type,
    required String member,
    required int from,
    required int to,
    Map<String, dynamic>? attachment,
    required Map<String, dynamic> ext,
  });
}
