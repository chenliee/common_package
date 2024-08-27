import 'dart:convert';
/// id : 54
/// projectId : 3
/// code : "B1000009"
/// title : "學生補習社考勤-儒林3"
/// authInfo : null
/// config : {"dynamicLinkMember":true,"dynamicCreateMember":true}
/// createdAt : "2024-07-05T06:28:21.120Z"
/// updatedAt : "2024-08-14T09:27:56.931Z"
/// project : {"id":3,"merchantId":1,"code":"tuition","title":"學生補習社考勤","signInfo":null,"config":{"grpcCode":"tuition","dynamicLinkMember":true,"dynamicCreateMember":true},"createdAt":"2024-07-05T06:28:04.708Z","updatedAt":"2024-08-12T10:52:48.005Z","merchant":{"id":1,"code":"scholar","title":"儒林教育","createdAt":"2024-07-05T06:07:13.834Z","updatedAt":"2024-08-12T10:52:47.678Z"}}
/// periods : [{"id":213,"ruleId":54,"code":"day1to7","type":"weekly","day":[1,2,3,4,5,6,7],"from":null,"to":null,"whitelist":null,"remark":"星期一至日","createdAt":"2024-07-12T08:54:27.437Z","updatedAt":"2024-07-12T08:54:27.437Z","slots":[{"id":252,"periodId":213,"from":36000,"to":50400,"sn":"31549b1f-36ba-42b3-af25-689433cbf6d3","remark":"早上10點到中午2點","createdAt":"2024-07-12T08:56:34.214Z","updatedAt":"2024-07-12T08:56:34.214Z"},{"id":253,"periodId":213,"from":54000,"to":86400,"sn":"72704b6c-44fe-4963-8d24-947ad015a152","remark":"下午3點後","createdAt":"2024-07-12T08:56:35.612Z","updatedAt":"2024-07-12T08:56:35.612Z"}]},{"id":232,"ruleId":54,"code":"school_bus","type":"weekly","day":[1,2,3,4,5,6,7],"from":null,"to":null,"whitelist":null,"remark":"星期一至日","createdAt":"2024-07-12T08:54:27.437Z","updatedAt":"2024-07-12T08:54:27.437Z","slots":[{"id":373,"periodId":232,"from":0,"to":50400,"sn":"53b45066-61f2-11ef-97ee-02420aa8ac70","remark":"早上10點到中午2點","createdAt":"2024-07-12T08:56:44.345Z","updatedAt":"2024-07-12T08:56:44.345Z"}]}]

RuleItem ruleItemFromJson(String str) => RuleItem.fromJson(json.decode(str));
String ruleItemToJson(RuleItem data) => json.encode(data.toJson());
class RuleItem {
  RuleItem({
      num? id, 
      num? projectId, 
      String? code, 
      String? title, 
      dynamic authInfo, 
      Config? config, 
      String? createdAt, 
      String? updatedAt, 
      Project? project, 
      List<Periods>? periods,}){
    _id = id;
    _projectId = projectId;
    _code = code;
    _title = title;
    _authInfo = authInfo;
    _config = config;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _project = project;
    _periods = periods;
}

  RuleItem.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _code = json['code'];
    _title = json['title'];
    _authInfo = json['authInfo'];
    _config = json['config'] != null ? Config.fromJson(json['config']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _project = json['project'] != null ? Project.fromJson(json['project']) : null;
    if (json['periods'] != null) {
      _periods = [];
      json['periods'].forEach((v) {
        _periods?.add(Periods.fromJson(v));
      });
    }
  }
  num? _id;
  num? _projectId;
  String? _code;
  String? _title;
  dynamic _authInfo;
  Config? _config;
  String? _createdAt;
  String? _updatedAt;
  Project? _project;
  List<Periods>? _periods;

  num? get id => _id;
  num? get projectId => _projectId;
  String? get code => _code;
  String? get title => _title;
  dynamic get authInfo => _authInfo;
  Config? get config => _config;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Project? get project => _project;
  List<Periods>? get periods => _periods;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['code'] = _code;
    map['title'] = _title;
    map['authInfo'] = _authInfo;
    if (_config != null) {
      map['config'] = _config?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_project != null) {
      map['project'] = _project?.toJson();
    }
    if (_periods != null) {
      map['periods'] = _periods?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 213
/// ruleId : 54
/// code : "day1to7"
/// type : "weekly"
/// day : [1,2,3,4,5,6,7]
/// from : null
/// to : null
/// whitelist : null
/// remark : "星期一至日"
/// createdAt : "2024-07-12T08:54:27.437Z"
/// updatedAt : "2024-07-12T08:54:27.437Z"
/// slots : [{"id":252,"periodId":213,"from":36000,"to":50400,"sn":"31549b1f-36ba-42b3-af25-689433cbf6d3","remark":"早上10點到中午2點","createdAt":"2024-07-12T08:56:34.214Z","updatedAt":"2024-07-12T08:56:34.214Z"},{"id":253,"periodId":213,"from":54000,"to":86400,"sn":"72704b6c-44fe-4963-8d24-947ad015a152","remark":"下午3點後","createdAt":"2024-07-12T08:56:35.612Z","updatedAt":"2024-07-12T08:56:35.612Z"}]

Periods periodsFromJson(String str) => Periods.fromJson(json.decode(str));
String periodsToJson(Periods data) => json.encode(data.toJson());
class Periods {
  Periods({
      num? id, 
      num? ruleId, 
      String? code, 
      String? type, 
      List<num>? day, 
      dynamic from, 
      dynamic to, 
      dynamic whitelist, 
      String? remark, 
      String? createdAt, 
      String? updatedAt, 
      List<Slots>? slots,}){
    _id = id;
    _ruleId = ruleId;
    _code = code;
    _type = type;
    _day = day;
    _from = from;
    _to = to;
    _whitelist = whitelist;
    _remark = remark;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _slots = slots;
}

  Periods.fromJson(dynamic json) {
    _id = json['id'];
    _ruleId = json['ruleId'];
    _code = json['code'];
    _type = json['type'];
    _day = json['day'] != null ? json['day'].cast<num>() : [];
    _from = json['from'];
    _to = json['to'];
    _whitelist = json['whitelist'];
    _remark = json['remark'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    if (json['slots'] != null) {
      _slots = [];
      json['slots'].forEach((v) {
        _slots?.add(Slots.fromJson(v));
      });
    }
  }
  num? _id;
  num? _ruleId;
  String? _code;
  String? _type;
  List<num>? _day;
  dynamic _from;
  dynamic _to;
  dynamic _whitelist;
  String? _remark;
  String? _createdAt;
  String? _updatedAt;
  List<Slots>? _slots;

  num? get id => _id;
  num? get ruleId => _ruleId;
  String? get code => _code;
  String? get type => _type;
  List<num>? get day => _day;
  dynamic get from => _from;
  dynamic get to => _to;
  dynamic get whitelist => _whitelist;
  String? get remark => _remark;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  List<Slots>? get slots => _slots;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['ruleId'] = _ruleId;
    map['code'] = _code;
    map['type'] = _type;
    map['day'] = _day;
    map['from'] = _from;
    map['to'] = _to;
    map['whitelist'] = _whitelist;
    map['remark'] = _remark;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_slots != null) {
      map['slots'] = _slots?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 252
/// periodId : 213
/// from : 36000
/// to : 50400
/// sn : "31549b1f-36ba-42b3-af25-689433cbf6d3"
/// remark : "早上10點到中午2點"
/// createdAt : "2024-07-12T08:56:34.214Z"
/// updatedAt : "2024-07-12T08:56:34.214Z"

Slots slotsFromJson(String str) => Slots.fromJson(json.decode(str));
String slotsToJson(Slots data) => json.encode(data.toJson());
class Slots {
  Slots({
      num? id, 
      num? periodId, 
      num? from, 
      num? to, 
      String? sn, 
      String? remark, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _periodId = periodId;
    _from = from;
    _to = to;
    _sn = sn;
    _remark = remark;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Slots.fromJson(dynamic json) {
    _id = json['id'];
    _periodId = json['periodId'];
    _from = json['from'];
    _to = json['to'];
    _sn = json['sn'];
    _remark = json['remark'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _periodId;
  num? _from;
  num? _to;
  String? _sn;
  String? _remark;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get periodId => _periodId;
  num? get from => _from;
  num? get to => _to;
  String? get sn => _sn;
  String? get remark => _remark;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['periodId'] = _periodId;
    map['from'] = _from;
    map['to'] = _to;
    map['sn'] = _sn;
    map['remark'] = _remark;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// id : 3
/// merchantId : 1
/// code : "tuition"
/// title : "學生補習社考勤"
/// signInfo : null
/// config : {"grpcCode":"tuition","dynamicLinkMember":true,"dynamicCreateMember":true}
/// createdAt : "2024-07-05T06:28:04.708Z"
/// updatedAt : "2024-08-12T10:52:48.005Z"
/// merchant : {"id":1,"code":"scholar","title":"儒林教育","createdAt":"2024-07-05T06:07:13.834Z","updatedAt":"2024-08-12T10:52:47.678Z"}

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
      String? updatedAt, 
      Merchant? merchant,}){
    _id = id;
    _merchantId = merchantId;
    _code = code;
    _title = title;
    _signInfo = signInfo;
    _config = config;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _merchant = merchant;
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
    _merchant = json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
  }
  num? _id;
  num? _merchantId;
  String? _code;
  String? _title;
  dynamic _signInfo;
  Config? _config;
  String? _createdAt;
  String? _updatedAt;
  Merchant? _merchant;

  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get code => _code;
  String? get title => _title;
  dynamic get signInfo => _signInfo;
  Config? get config => _config;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Merchant? get merchant => _merchant;

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
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    return map;
  }

}

/// id : 1
/// code : "scholar"
/// title : "儒林教育"
/// createdAt : "2024-07-05T06:07:13.834Z"
/// updatedAt : "2024-08-12T10:52:47.678Z"

Merchant merchantFromJson(String str) => Merchant.fromJson(json.decode(str));
String merchantToJson(Merchant data) => json.encode(data.toJson());
class Merchant {
  Merchant({
      num? id, 
      String? code, 
      String? title, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _code = code;
    _title = title;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Merchant.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _title = json['title'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _code;
  String? _title;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get code => _code;
  String? get title => _title;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['title'] = _title;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// grpcCode : "tuition"
/// dynamicLinkMember : true
/// dynamicCreateMember : true

Config configFromJson(String str) => Config.fromJson(json.decode(str));
String configToJson(Config data) => json.encode(data.toJson());
class Config {
  Config({
      String? grpcCode, 
      bool? dynamicLinkMember, 
      bool? dynamicCreateMember,}){
    _grpcCode = grpcCode;
    _dynamicLinkMember = dynamicLinkMember;
    _dynamicCreateMember = dynamicCreateMember;
}

  Config.fromJson(dynamic json) {
    _grpcCode = json['grpcCode'];
    _dynamicLinkMember = json['dynamicLinkMember'];
    _dynamicCreateMember = json['dynamicCreateMember'];
  }
  String? _grpcCode;
  bool? _dynamicLinkMember;
  bool? _dynamicCreateMember;

  String? get grpcCode => _grpcCode;
  bool? get dynamicLinkMember => _dynamicLinkMember;
  bool? get dynamicCreateMember => _dynamicCreateMember;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['grpcCode'] = _grpcCode;
    map['dynamicLinkMember'] = _dynamicLinkMember;
    map['dynamicCreateMember'] = _dynamicCreateMember;
    return map;
  }

}


