import 'dart:convert';

import 'package:attendance/model/record_item.dart';

/// id : 207
/// sn : "ba3a546e-cd89-46eb-96c5-9e71206d721a"
/// memberId : 77
/// recordId : 426
/// grpcUid : "B10000090010"
/// deviceSN : null
/// time : 1723195688
/// ext : {"state":"arrived"}
/// createdAt : "2024-08-09T09:32:00.463Z"
/// updatedAt : "2024-08-09T09:32:00.463Z"
/// record : {"id":426,"sn":"a250d8c6-de0a-4a92-a2e2-786daa54e328","timeId":772,"memberId":77,"leaveId":null,"ext":null,"createdAt":"2024-08-09T09:32:00.394Z","updatedAt":"2024-08-09T09:32:00.394Z"}
/// member : {"id":77,"projectId":3,"uid":"B10000090010","title":null,"info":null,"createdAt":"2024-08-09T09:32:00.175Z","updatedAt":"2024-08-09T09:32:00.175Z"}

PunchLogItem punchLogItemFromJson(String str) => PunchLogItem.fromJson(json.decode(str));
String punchLogItemToJson(PunchLogItem data) => json.encode(data.toJson());
class PunchLogItem {
  PunchLogItem({
      num? id, 
      String? sn, 
      num? memberId, 
      num? recordId, 
      String? grpcUid, 
      dynamic deviceSN, 
      num? time, 
      Ext? ext, 
      String? createdAt, 
      String? updatedAt, 
      Record? record, 
      Member? member,}){
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
    _ext = json['ext'] != null ? Ext.fromJson(json['ext']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _record = json['record'] != null ? Record.fromJson(json['record']) : null;
    _member = json['member'] != null ? Member.fromJson(json['member']) : null;
  }
  num? _id;
  String? _sn;
  num? _memberId;
  num? _recordId;
  String? _grpcUid;
  dynamic _deviceSN;
  num? _time;
  Ext? _ext;
  String? _createdAt;
  String? _updatedAt;
  Record? _record;
  Member? _member;

  num? get id => _id;
  String? get sn => _sn;
  num? get memberId => _memberId;
  num? get recordId => _recordId;
  String? get grpcUid => _grpcUid;
  dynamic get deviceSN => _deviceSN;
  num? get time => _time;
  Ext? get ext => _ext;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Record? get record => _record;
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
    if (_ext != null) {
      map['ext'] = _ext?.toJson();
    }
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


/// id : 426
/// sn : "a250d8c6-de0a-4a92-a2e2-786daa54e328"
/// timeId : 772
/// memberId : 77
/// leaveId : null
/// ext : null
/// createdAt : "2024-08-09T09:32:00.394Z"
/// updatedAt : "2024-08-09T09:32:00.394Z"

Record recordFromJson(String str) => Record.fromJson(json.decode(str));
String recordToJson(Record data) => json.encode(data.toJson());
class Record {
  Record({
      num? id,
      String? sn,
      num? timeId,
      num? memberId,
      dynamic leaveId,
      dynamic ext,
      String? createdAt,
      String? updatedAt,}){
    _id = id;
    _sn = sn;
    _timeId = timeId;
    _memberId = memberId;
    _leaveId = leaveId;
    _ext = ext;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Record.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _timeId = json['timeId'];
    _memberId = json['memberId'];
    _leaveId = json['leaveId'];
    _ext = json['ext'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _sn;
  num? _timeId;
  num? _memberId;
  dynamic _leaveId;
  dynamic _ext;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get sn => _sn;
  num? get timeId => _timeId;
  num? get memberId => _memberId;
  dynamic get leaveId => _leaveId;
  dynamic get ext => _ext;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sn'] = _sn;
    map['timeId'] = _timeId;
    map['memberId'] = _memberId;
    map['leaveId'] = _leaveId;
    map['ext'] = _ext;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

