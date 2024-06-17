import 'dart:convert';
/// id : 15
/// sn : "3a1a8c7d-9428-4cc8-8239-1d2be4886077"
/// memberId : 2
/// recordId : 2
/// grpcUid : null
/// deviceSN : null
/// time : 1718348611
/// ext : null
/// createdAt : "2024-06-14T07:03:31.184Z"
/// updatedAt : "2024-06-14T07:03:31.184Z"
/// record : {"id":2,"sn":"6f003420-ff0d-4968-b6bd-b1939d237db1","timeId":1,"memberId":2,"leaveId":null,"createdAt":"2024-06-14T06:21:57.403Z","updatedAt":"2024-06-14T06:21:57.403Z","leave":null}
/// member : {"id":2,"projectId":6,"uid":"1cd8bfba-5136-463c-a94e-cee66f494d4f","title":null,"info":null,"createdAt":"2024-06-14T06:21:57.094Z","updatedAt":"2024-06-14T06:21:57.094Z"}

SingInModel singInModelFromJson(String str) => SingInModel.fromJson(json.decode(str));
String singInModelToJson(SingInModel data) => json.encode(data.toJson());
class SingInModel {
  SingInModel({
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

  SingInModel.fromJson(dynamic json) {
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
    _record = json['record'] != null ? Record.fromJson(json['record']) : null;
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
  Record? _record;
  Member? _member;

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

/// id : 2
/// sn : "6f003420-ff0d-4968-b6bd-b1939d237db1"
/// timeId : 1
/// memberId : 2
/// leaveId : null
/// createdAt : "2024-06-14T06:21:57.403Z"
/// updatedAt : "2024-06-14T06:21:57.403Z"
/// leave : null

Record recordFromJson(String str) => Record.fromJson(json.decode(str));
String recordToJson(Record data) => json.encode(data.toJson());
class Record {
  Record({
      num? id, 
      String? sn, 
      num? timeId, 
      num? memberId, 
      dynamic leaveId, 
      String? createdAt, 
      String? updatedAt, 
      dynamic leave,}){
    _id = id;
    _sn = sn;
    _timeId = timeId;
    _memberId = memberId;
    _leaveId = leaveId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _leave = leave;
}

  Record.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _timeId = json['timeId'];
    _memberId = json['memberId'];
    _leaveId = json['leaveId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _leave = json['leave'];
  }
  num? _id;
  String? _sn;
  num? _timeId;
  num? _memberId;
  dynamic _leaveId;
  String? _createdAt;
  String? _updatedAt;
  dynamic _leave;

  num? get id => _id;
  String? get sn => _sn;
  num? get timeId => _timeId;
  num? get memberId => _memberId;
  dynamic get leaveId => _leaveId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get leave => _leave;

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
    return map;
  }

}