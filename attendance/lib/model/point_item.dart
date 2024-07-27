import 'dart:convert';
/// id : 1
/// ruleId : 70
/// sn : "25eb6bc5-d472-4c3d-837f-cd1f6de2d841"
/// date : "2023-10-30T16:00:00.000Z"
/// periodId : 122
/// slotId : null
/// from : 41400
/// to : 64800
/// createdAt : "2024-07-05T06:44:18.855Z"
/// updatedAt : "2024-07-05T06:57:20.854Z"
/// period : {"id":122,"ruleId":70,"code":"6754c50f-8f93-48d3-8f13-adb31b676301","type":"weekly","day":[0,1,2,3,4,5,6],"from":null,"to":null,"whitelist":null,"remark":"0205_班级打卡周期","createdAt":"2024-07-05T06:39:22.647Z","updatedAt":"2024-07-05T06:39:22.647Z"}
/// rule : {"id":70,"projectId":4,"code":"Mg23raWcyu","title":"0205-考勤规则","authInfo":null,"config":null,"createdAt":"2024-07-05T06:39:20.199Z","updatedAt":"2024-07-05T06:39:20.199Z"}

PointItem pointItemFromJson(String str) => PointItem.fromJson(json.decode(str));
String pointItemToJson(PointItem data) => json.encode(data.toJson());
class PointItem {
  PointItem({
      num? id, 
      num? ruleId, 
      String? sn, 
      String? date, 
      num? periodId, 
      dynamic slotId, 
      num? from, 
      num? to, 
      String? createdAt, 
      String? updatedAt, 
      Period? period, 
      Rule? rule,}){
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
    _period = period;
    _rule = rule;
}

  PointItem.fromJson(dynamic json) {
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
    _period = json['period'] != null ? Period.fromJson(json['period']) : null;
    _rule = json['rule'] != null ? Rule.fromJson(json['rule']) : null;
  }
  num? _id;
  num? _ruleId;
  String? _sn;
  String? _date;
  num? _periodId;
  dynamic _slotId;
  num? _from;
  num? _to;
  String? _createdAt;
  String? _updatedAt;
  Period? _period;
  Rule? _rule;

  num? get id => _id;
  num? get ruleId => _ruleId;
  String? get sn => _sn;
  String? get date => _date;
  num? get periodId => _periodId;
  dynamic get slotId => _slotId;
  num? get from => _from;
  num? get to => _to;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Period? get period => _period;
  Rule? get rule => _rule;

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
    if (_period != null) {
      map['period'] = _period?.toJson();
    }
    if (_rule != null) {
      map['rule'] = _rule?.toJson();
    }
    return map;
  }

}

/// id : 70
/// projectId : 4
/// code : "Mg23raWcyu"
/// title : "0205-考勤规则"
/// authInfo : null
/// config : null
/// createdAt : "2024-07-05T06:39:20.199Z"
/// updatedAt : "2024-07-05T06:39:20.199Z"

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
      String? updatedAt,}){
    _id = id;
    _projectId = projectId;
    _code = code;
    _title = title;
    _authInfo = authInfo;
    _config = config;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
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
  }
  num? _id;
  num? _projectId;
  String? _code;
  String? _title;
  dynamic _authInfo;
  dynamic _config;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get projectId => _projectId;
  String? get code => _code;
  String? get title => _title;
  dynamic get authInfo => _authInfo;
  dynamic get config => _config;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

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
    return map;
  }

}

/// id : 122
/// ruleId : 70
/// code : "6754c50f-8f93-48d3-8f13-adb31b676301"
/// type : "weekly"
/// day : [0,1,2,3,4,5,6]
/// from : null
/// to : null
/// whitelist : null
/// remark : "0205_班级打卡周期"
/// createdAt : "2024-07-05T06:39:22.647Z"
/// updatedAt : "2024-07-05T06:39:22.647Z"

Period periodFromJson(String str) => Period.fromJson(json.decode(str));
String periodToJson(Period data) => json.encode(data.toJson());
class Period {
  Period({
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
      String? updatedAt,}){
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
}

  Period.fromJson(dynamic json) {
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
    return map;
  }

}