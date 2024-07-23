import 'dart:convert';
/// id : 1
/// sn : "da39a583-05cf-43dd-807b-b5ba6606002e"
/// typeId : 7
/// ruleId : 61
/// memberId : 8
/// from : 1706859000
/// to : 1706859600
/// attachment : null
/// ext : null
/// status : "init"
/// approved : false
/// createdAt : "2024-07-05T09:40:11.205Z"
/// updatedAt : "2024-07-08T02:40:51.134Z"
/// rule : {"id":61,"projectId":4,"code":"8I7MIzWFw4","title":"TEST002-考勤规则","authInfo":null,"config":null,"createdAt":"2024-07-05T06:38:20.456Z","updatedAt":"2024-07-05T06:38:20.456Z","project":{"id":4,"merchantId":1,"code":"course","title":"課程考勤","signInfo":null,"config":{"grpc":true,"grpcCode":"scholar-course","grpcEvery":true,"dynamicCreateMember":true},"createdAt":"2024-07-05T06:28:05.119Z","updatedAt":"2024-07-12T08:53:30.464Z"}}
/// member : {"id":8,"projectId":4,"uid":"S0000178","title":"S0000178","info":null,"createdAt":"2024-07-05T07:54:05.058Z","updatedAt":"2024-07-05T07:54:05.058Z"}
/// type : {"id":7,"projectId":4,"code":"sick","title":"病假","createdAt":"2024-07-05T06:28:23.632Z","updatedAt":"2024-07-12T08:53:35.028Z"}

LeaveListItem leaveListItemFromJson(String str) => LeaveListItem.fromJson(json.decode(str));
String leaveListItemToJson(LeaveListItem data) => json.encode(data.toJson());
class LeaveListItem {
  LeaveListItem({
      num? id, 
      String? sn, 
      num? typeId, 
      num? ruleId, 
      num? memberId, 
      num? from, 
      num? to, 
      dynamic attachment, 
      dynamic ext, 
      String? status, 
      bool? approved, 
      String? createdAt, 
      String? updatedAt, 
      Rule? rule, 
      Member? member, 
      Type? type,}){
    _id = id;
    _sn = sn;
    _typeId = typeId;
    _ruleId = ruleId;
    _memberId = memberId;
    _from = from;
    _to = to;
    _attachment = attachment;
    _ext = ext;
    _status = status;
    _approved = approved;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _rule = rule;
    _member = member;
    _type = type;
}

  LeaveListItem.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _typeId = json['typeId'];
    _ruleId = json['ruleId'];
    _memberId = json['memberId'];
    _from = json['from'];
    _to = json['to'];
    _attachment = json['attachment'];
    _ext = json['ext'];
    _status = json['status'];
    _approved = json['approved'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _rule = json['rule'] != null ? Rule.fromJson(json['rule']) : null;
    _member = json['member'] != null ? Member.fromJson(json['member']) : null;
    _type = json['type'] != null ? Type.fromJson(json['type']) : null;
  }
  num? _id;
  String? _sn;
  num? _typeId;
  num? _ruleId;
  num? _memberId;
  num? _from;
  num? _to;
  dynamic _attachment;
  dynamic _ext;
  String? _status;
  bool? _approved;
  String? _createdAt;
  String? _updatedAt;
  Rule? _rule;
  Member? _member;
  Type? _type;

  num? get id => _id;
  String? get sn => _sn;
  num? get typeId => _typeId;
  num? get ruleId => _ruleId;
  num? get memberId => _memberId;
  num? get from => _from;
  num? get to => _to;
  dynamic get attachment => _attachment;
  dynamic get ext => _ext;
  String? get status => _status;
  bool? get approved => _approved;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Rule? get rule => _rule;
  Member? get member => _member;
  Type? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sn'] = _sn;
    map['typeId'] = _typeId;
    map['ruleId'] = _ruleId;
    map['memberId'] = _memberId;
    map['from'] = _from;
    map['to'] = _to;
    map['attachment'] = _attachment;
    map['ext'] = _ext;
    map['status'] = _status;
    map['approved'] = _approved;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_rule != null) {
      map['rule'] = _rule?.toJson();
    }
    if (_member != null) {
      map['member'] = _member?.toJson();
    }
    if (_type != null) {
      map['type'] = _type?.toJson();
    }
    return map;
  }

}

/// id : 7
/// projectId : 4
/// code : "sick"
/// title : "病假"
/// createdAt : "2024-07-05T06:28:23.632Z"
/// updatedAt : "2024-07-12T08:53:35.028Z"

Type typeFromJson(String str) => Type.fromJson(json.decode(str));
String typeToJson(Type data) => json.encode(data.toJson());
class Type {
  Type({
      num? id, 
      num? projectId, 
      String? code, 
      String? title, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _projectId = projectId;
    _code = code;
    _title = title;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Type.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _code = json['code'];
    _title = json['title'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _projectId;
  String? _code;
  String? _title;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get projectId => _projectId;
  String? get code => _code;
  String? get title => _title;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['code'] = _code;
    map['title'] = _title;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// id : 8
/// projectId : 4
/// uid : "S0000178"
/// title : "S0000178"
/// info : null
/// createdAt : "2024-07-05T07:54:05.058Z"
/// updatedAt : "2024-07-05T07:54:05.058Z"

Member memberFromJson(String str) => Member.fromJson(json.decode(str));
String memberToJson(Member data) => json.encode(data.toJson());
class Member {
  Member({
      num? id, 
      num? projectId, 
      String? uid, 
      String? title, 
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
  String? _title;
  dynamic _info;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get projectId => _projectId;
  String? get uid => _uid;
  String? get title => _title;
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

/// id : 61
/// projectId : 4
/// code : "8I7MIzWFw4"
/// title : "TEST002-考勤规则"
/// authInfo : null
/// config : null
/// createdAt : "2024-07-05T06:38:20.456Z"
/// updatedAt : "2024-07-05T06:38:20.456Z"
/// project : {"id":4,"merchantId":1,"code":"course","title":"課程考勤","signInfo":null,"config":{"grpc":true,"grpcCode":"scholar-course","grpcEvery":true,"dynamicCreateMember":true},"createdAt":"2024-07-05T06:28:05.119Z","updatedAt":"2024-07-12T08:53:30.464Z"}

Rule ruleFromJson(String str) => Rule.fromJson(json.decode(str));
String ruleToJson(Rule data) => json.encode(data.toJson());
class Rule {
  Rule({
      num? id, 
      num? projectId, 
      String? code, 
      String? title, 
      dynamic authInfo, 
      dynamic config, 
      String? createdAt, 
      String? updatedAt, 
      Project? project,}){
    _id = id;
    _projectId = projectId;
    _code = code;
    _title = title;
    _authInfo = authInfo;
    _config = config;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _project = project;
}

  Rule.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _code = json['code'];
    _title = json['title'];
    _authInfo = json['authInfo'];
    _config = json['config'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _project = json['project'] != null ? Project.fromJson(json['project']) : null;
  }
  num? _id;
  num? _projectId;
  String? _code;
  String? _title;
  dynamic _authInfo;
  dynamic _config;
  String? _createdAt;
  String? _updatedAt;
  Project? _project;

  num? get id => _id;
  num? get projectId => _projectId;
  String? get code => _code;
  String? get title => _title;
  dynamic get authInfo => _authInfo;
  dynamic get config => _config;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Project? get project => _project;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['code'] = _code;
    map['title'] = _title;
    map['authInfo'] = _authInfo;
    map['config'] = _config;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_project != null) {
      map['project'] = _project?.toJson();
    }
    return map;
  }

}

/// id : 4
/// merchantId : 1
/// code : "course"
/// title : "課程考勤"
/// signInfo : null
/// config : {"grpc":true,"grpcCode":"scholar-course","grpcEvery":true,"dynamicCreateMember":true}
/// createdAt : "2024-07-05T06:28:05.119Z"
/// updatedAt : "2024-07-12T08:53:30.464Z"

Project projectFromJson(String str) => Project.fromJson(json.decode(str));
String projectToJson(Project data) => json.encode(data.toJson());
class Project {
  Project({
      num? id, 
      num? merchantId, 
      String? code, 
      String? title, 
      dynamic signInfo, 
      Config? config, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _merchantId = merchantId;
    _code = code;
    _title = title;
    _signInfo = signInfo;
    _config = config;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Project.fromJson(dynamic json) {
    _id = json['id'];
    _merchantId = json['merchantId'];
    _code = json['code'];
    _title = json['title'];
    _signInfo = json['signInfo'];
    _config = json['config'] != null ? Config.fromJson(json['config']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _merchantId;
  String? _code;
  String? _title;
  dynamic _signInfo;
  Config? _config;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get code => _code;
  String? get title => _title;
  dynamic get signInfo => _signInfo;
  Config? get config => _config;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['merchantId'] = _merchantId;
    map['code'] = _code;
    map['title'] = _title;
    map['signInfo'] = _signInfo;
    if (_config != null) {
      map['config'] = _config?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// grpc : true
/// grpcCode : "scholar-course"
/// grpcEvery : true
/// dynamicCreateMember : true

Config configFromJson(String str) => Config.fromJson(json.decode(str));
String configToJson(Config data) => json.encode(data.toJson());
class Config {
  Config({
      bool? grpc, 
      String? grpcCode, 
      bool? grpcEvery, 
      bool? dynamicCreateMember,}){
    _grpc = grpc;
    _grpcCode = grpcCode;
    _grpcEvery = grpcEvery;
    _dynamicCreateMember = dynamicCreateMember;
}

  Config.fromJson(dynamic json) {
    _grpc = json['grpc'];
    _grpcCode = json['grpcCode'];
    _grpcEvery = json['grpcEvery'];
    _dynamicCreateMember = json['dynamicCreateMember'];
  }
  bool? _grpc;
  String? _grpcCode;
  bool? _grpcEvery;
  bool? _dynamicCreateMember;

  bool? get grpc => _grpc;
  String? get grpcCode => _grpcCode;
  bool? get grpcEvery => _grpcEvery;
  bool? get dynamicCreateMember => _dynamicCreateMember;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['grpc'] = _grpc;
    map['grpcCode'] = _grpcCode;
    map['grpcEvery'] = _grpcEvery;
    map['dynamicCreateMember'] = _dynamicCreateMember;
    return map;
  }

}