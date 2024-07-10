import 'dart:convert';

import 'package:attendance/attendance.dart';

/// id : 46
/// sn : "e6734c9f-320b-4845-b47a-5e06a334986c"
/// memberId : 55
/// recordId : 276
/// grpcUid : null
/// deviceSN : null
/// time : 1720593643
/// ext : null
/// createdAt : "2024-07-10T06:40:43.617Z"
/// updatedAt : "2024-07-10T06:40:43.617Z"
/// record : {"id":276,"sn":"73e6ddfc-bc64-4ac2-9a5b-269f8894d277","timeId":708,"memberId":55,"leaveId":null,"ext":null,"createdAt":"2024-07-10T05:37:16.224Z","updatedAt":"2024-07-10T05:37:16.224Z","leave":null}
/// member : {"id":55,"projectId":2,"uid":"dev231200100349","title":null,"info":null,"createdAt":"2024-07-10T05:22:00.115Z","updatedAt":"2024-07-10T05:22:00.115Z"}

PunchLogItem punchLogItemFromJson(String str) =>
    PunchLogItem.fromJson(json.decode(str));
String punchLogItemToJson(PunchLogItem data) => json.encode(data.toJson());

class PunchLogItem {
  PunchLogItem({
    num? id,
    String? sn,
    num? memberId,
    num? recordId,
    dynamic grpcUid,
    dynamic deviceSN,
    num? time,
    dynamic ext,
    String? createdAt,
    String? updatedAt,
    RecordItem? record,
    Member? member,
  }) {
    _id = id;
    _sn = sn;
    _memberId = memberId;
    _recordId = recordId;
    _grpcUid = grpcUid;
    _deviceSN = deviceSN;
    _time = time;
    _ext = ext;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _record = record;
    _member = member;
  }

  PunchLogItem.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _memberId = json['memberId'];
    _recordId = json['recordId'];
    _grpcUid = json['grpcUid'];
    _deviceSN = json['deviceSN'];
    _time = json['time'];
    _ext = json['ext'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _record =
        json['record'] != null ? RecordItem.fromJson(json['record']) : null;
    _member = json['member'] != null ? Member.fromJson(json['member']) : null;
  }
  num? _id;
  String? _sn;
  num? _memberId;
  num? _recordId;
  dynamic _grpcUid;
  dynamic _deviceSN;
  num? _time;
  dynamic _ext;
  String? _createdAt;
  String? _updatedAt;
  RecordItem? _record;
  Member? _member;
  PunchLogItem copyWith({
    num? id,
    String? sn,
    num? memberId,
    num? recordId,
    dynamic grpcUid,
    dynamic deviceSN,
    num? time,
    dynamic ext,
    String? createdAt,
    String? updatedAt,
    RecordItem? record,
    Member? member,
  }) =>
      PunchLogItem(
        id: id ?? _id,
        sn: sn ?? _sn,
        memberId: memberId ?? _memberId,
        recordId: recordId ?? _recordId,
        grpcUid: grpcUid ?? _grpcUid,
        deviceSN: deviceSN ?? _deviceSN,
        time: time ?? _time,
        ext: ext ?? _ext,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        record: record ?? _record,
        member: member ?? _member,
      );
  num? get id => _id;
  String? get sn => _sn;
  num? get memberId => _memberId;
  num? get recordId => _recordId;
  dynamic get grpcUid => _grpcUid;
  dynamic get deviceSN => _deviceSN;
  num? get time => _time;
  dynamic get ext => _ext;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  RecordItem? get record => _record;
  Member? get member => _member;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sn'] = _sn;
    map['memberId'] = _memberId;
    map['recordId'] = _recordId;
    map['grpcUid'] = _grpcUid;
    map['deviceSN'] = _deviceSN;
    map['time'] = _time;
    map['ext'] = _ext;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_record != null) {
      map['record'] = _record?.toJson();
    }
    if (_member != null) {
      map['member'] = _member?.toJson();
    }
    return map;
  }
}
