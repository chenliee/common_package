import 'dart:convert';
/// id : 2
/// sn : "6f003420-ff0d-4968-b6bd-b1939d237db1"
/// timeId : 1
/// memberId : 2
/// leaveId : null
/// createdAt : "2024-06-14T06:21:57.403Z"
/// updatedAt : "2024-06-14T06:21:57.403Z"
/// leave : null
/// member : {"id":2,"projectId":6,"uid":"1cd8bfba-5136-463c-a94e-cee66f494d4f","title":null,"info":null,"createdAt":"2024-06-14T06:21:57.094Z","updatedAt":"2024-06-14T06:21:57.094Z"}
/// time : {"id":1,"ruleId":8,"sn":"79f4792b-3022-4db0-b7cb-7e8d94586fa2","date":"2024-06-13T16:00:00.000Z","periodId":null,"slotId":null,"from":0,"to":86400,"createdAt":"2024-06-14T06:15:51.462Z","updatedAt":"2024-06-14T07:03:31.103Z"}
/// logs : [{"id":2,"sn":"2ee9d1f6-d847-4bd6-9a97-ccb02af4f42f","memberId":2,"recordId":2,"grpcUid":null,"deviceSN":null,"time":1718346117,"ext":null,"createdAt":"2024-06-14T06:21:57.468Z","updatedAt":"2024-06-14T06:21:57.468Z"}]

SingRecordModel singRecordModelFromJson(String str) => SingRecordModel.fromJson(json.decode(str));
String singRecordModelToJson(SingRecordModel data) => json.encode(data.toJson());
class SingRecordModel {
  SingRecordModel({
      num? id, 
      String? sn, 
      num? timeId, 
      num? memberId, 
      dynamic leaveId, 
      String? createdAt, 
      String? updatedAt, 
      dynamic leave, 
      Member? member, 
      Time? time, 
      List<Logs>? logs,}){
    _id = id;
    _sn = sn;
    _timeId = timeId;
    _memberId = memberId;
    _leaveId = leaveId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _leave = leave;
    _member = member;
    _time = time;
    _logs = logs;
}

  SingRecordModel.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _timeId = json['timeId'];
    _memberId = json['memberId'];
    _leaveId = json['leaveId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _leave = json['leave'];
    _member = json['member'] != null ? Member.fromJson(json['member']) : null;
    _time = json['time'] != null ? Time.fromJson(json['time']) : null;
    if (json['logs'] != null) {
      _logs = [];
      json['logs'].forEach((v) {
        _logs?.add(Logs.fromJson(v));
      });
    }
  }
  num? _id;
  String? _sn;
  num? _timeId;
  num? _memberId;
  dynamic _leaveId;
  String? _createdAt;
  String? _updatedAt;
  dynamic _leave;
  Member? _member;
  Time? _time;
  List<Logs>? _logs;

  num? get id => _id;
  String? get sn => _sn;
  num? get timeId => _timeId;
  num? get memberId => _memberId;
  dynamic get leaveId => _leaveId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get leave => _leave;
  Member? get member => _member;
  Time? get time => _time;
  List<Logs>? get logs => _logs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sn'] = _sn;
    map['timeId'] = _timeId;
    map['memberId'] = _memberId;
    map['leaveId'] = _leaveId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['leave'] = _leave;
    if (_member != null) {
      map['member'] = _member?.toJson();
    }
    if (_time != null) {
      map['time'] = _time?.toJson();
    }
    if (_logs != null) {
      map['logs'] = _logs?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2
/// sn : "2ee9d1f6-d847-4bd6-9a97-ccb02af4f42f"
/// memberId : 2
/// recordId : 2
/// grpcUid : null
/// deviceSN : null
/// time : 1718346117
/// ext : null
/// createdAt : "2024-06-14T06:21:57.468Z"
/// updatedAt : "2024-06-14T06:21:57.468Z"

Logs logsFromJson(String str) => Logs.fromJson(json.decode(str));
String logsToJson(Logs data) => json.encode(data.toJson());
class Logs {
  Logs({
      num? id, 
      String? sn, 
      num? memberId, 
      num? recordId, 
      dynamic grpcUid, 
      dynamic deviceSN, 
      num? time, 
      dynamic ext, 
      String? createdAt, 
      String? updatedAt,}){
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
}

  Logs.fromJson(dynamic json) {
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
    return map;
  }

}

/// id : 1
/// ruleId : 8
/// sn : "79f4792b-3022-4db0-b7cb-7e8d94586fa2"
/// date : "2024-06-13T16:00:00.000Z"
/// periodId : null
/// slotId : null
/// from : 0
/// to : 86400
/// createdAt : "2024-06-14T06:15:51.462Z"
/// updatedAt : "2024-06-14T07:03:31.103Z"

Time timeFromJson(String str) => Time.fromJson(json.decode(str));
String timeToJson(Time data) => json.encode(data.toJson());
class Time {
  Time({
      num? id, 
      num? ruleId, 
      String? sn, 
      String? date, 
      dynamic periodId, 
      dynamic slotId, 
      num? from, 
      num? to, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _ruleId = ruleId;
    _sn = sn;
    _date = date;
    _periodId = periodId;
    _slotId = slotId;
    _from = from;
    _to = to;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Time.fromJson(dynamic json) {
    _id = json['id'];
    _ruleId = json['ruleId'];
    _sn = json['sn'];
    _date = json['date'];
    _periodId = json['periodId'];
    _slotId = json['slotId'];
    _from = json['from'];
    _to = json['to'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _ruleId;
  String? _sn;
  String? _date;
  dynamic _periodId;
  dynamic _slotId;
  num? _from;
  num? _to;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get ruleId => _ruleId;
  String? get sn => _sn;
  String? get date => _date;
  dynamic get periodId => _periodId;
  dynamic get slotId => _slotId;
  num? get from => _from;
  num? get to => _to;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['ruleId'] = _ruleId;
    map['sn'] = _sn;
    map['date'] = _date;
    map['periodId'] = _periodId;
    map['slotId'] = _slotId;
    map['from'] = _from;
    map['to'] = _to;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// id : 2
/// projectId : 6
/// uid : "1cd8bfba-5136-463c-a94e-cee66f494d4f"
/// title : null
/// info : null
/// createdAt : "2024-06-14T06:21:57.094Z"
/// updatedAt : "2024-06-14T06:21:57.094Z"

Member memberFromJson(String str) => Member.fromJson(json.decode(str));
String memberToJson(Member data) => json.encode(data.toJson());
class Member {
  Member({
      num? id, 
      num? projectId, 
      String? uid, 
      dynamic title, 
      dynamic info, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _projectId = projectId;
    _uid = uid;
    _title = title;
    _info = info;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Member.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _uid = json['uid'];
    _title = json['title'];
    _info = json['info'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _projectId;
  String? _uid;
  dynamic _title;
  dynamic _info;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get projectId => _projectId;
  String? get uid => _uid;
  dynamic get title => _title;
  dynamic get info => _info;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['uid'] = _uid;
    map['title'] = _title;
    map['info'] = _info;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}