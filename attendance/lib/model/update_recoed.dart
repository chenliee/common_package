import 'dart:convert';

/// id : 236
/// sn : "b09491d5-5bec-46bb-bd8e-4de680441957"
/// timeId : 354
/// memberId : 18
/// leaveId : 13
/// ext : {"remark":"修改自定义字段数据"}
/// createdAt : "2024-07-05T09:00:45.562Z"
/// updatedAt : "2024-08-05T07:01:49.904Z"
/// leave : {"id":13,"projectId":4,"code":"TL","title":"TL","createdAt":"2024-07-05T07:52:17.747Z","updatedAt":"2024-07-05T07:52:17.747Z"}
/// member : {"id":18,"projectId":4,"uid":"S0000076","title":"S0000076","info":null,"createdAt":"2024-07-05T08:02:01.972Z","updatedAt":"2024-07-05T08:02:01.972Z"}
/// time : {"id":354,"ruleId":103,"sn":"1ae5c76b-6fea-4103-97fc-861275b29658","date":"2024-01-05T16:00:00.000Z","periodId":155,"slotId":null,"from":25200,"to":28800,"createdAt":"2024-07-05T07:21:47.881Z","updatedAt":"2024-07-05T07:21:47.881Z","rule":{"id":103,"projectId":4,"code":"pUZINWm9ai","title":"周六自由课-考勤规则","authInfo":null,"config":null,"createdAt":"2024-07-05T06:43:00.520Z","updatedAt":"2024-07-05T06:43:00.520Z"},"period":{"id":155,"ruleId":103,"code":"f73e031d-2eae-4c15-b1ca-a92d79a76e9f","type":"weekly","day":[6],"from":null,"to":null,"whitelist":null,"remark":"周六自由课_班级打卡周期","createdAt":"2024-07-05T06:43:02.242Z","updatedAt":"2024-07-05T06:43:02.242Z"},"slot":null}
/// leaveRelation : null
/// logs : null

UpdateRecoed updateRecoedFromJson(String str) =>
    UpdateRecoed.fromJson(json.decode(str));
String updateRecoedToJson(UpdateRecoed data) => json.encode(data.toJson());

class UpdateRecoed {
  UpdateRecoed({
    num? id,
    String? sn,
    num? timeId,
    num? memberId,
    num? leaveId,
    Ext? ext,
    String? createdAt,
    String? updatedAt,
    Leave? leave,
    Member? member,
    Time? time,
    dynamic leaveRelation,
    dynamic logs,
  }) {
    _id = id;
    _sn = sn;
    _timeId = timeId;
    _memberId = memberId;
    _leaveId = leaveId;
    _ext = ext;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _leave = leave;
    _member = member;
    _time = time;
    _leaveRelation = leaveRelation;
    _logs = logs;
  }

  UpdateRecoed.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _timeId = json['timeId'];
    _memberId = json['memberId'];
    _leaveId = json['leaveId'];
    _ext = json['ext'] != null ? Ext.fromJson(json['ext']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _leave = json['leave'] != null ? Leave.fromJson(json['leave']) : null;
    _member = json['member'] != null ? Member.fromJson(json['member']) : null;
    _time = json['time'] != null ? Time.fromJson(json['time']) : null;
    _leaveRelation = json['leaveRelation'];
    _logs = json['logs'];
  }
  num? _id;
  String? _sn;
  num? _timeId;
  num? _memberId;
  num? _leaveId;
  Ext? _ext;
  String? _createdAt;
  String? _updatedAt;
  Leave? _leave;
  Member? _member;
  Time? _time;
  dynamic _leaveRelation;
  dynamic _logs;

  num? get id => _id;
  String? get sn => _sn;
  num? get timeId => _timeId;
  num? get memberId => _memberId;
  num? get leaveId => _leaveId;
  Ext? get ext => _ext;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Leave? get leave => _leave;
  Member? get member => _member;
  Time? get time => _time;
  dynamic get leaveRelation => _leaveRelation;
  dynamic get logs => _logs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sn'] = _sn;
    map['timeId'] = _timeId;
    map['memberId'] = _memberId;
    map['leaveId'] = _leaveId;
    if (_ext != null) {
      map['ext'] = _ext?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_leave != null) {
      map['leave'] = _leave?.toJson();
    }
    if (_member != null) {
      map['member'] = _member?.toJson();
    }
    if (_time != null) {
      map['time'] = _time?.toJson();
    }
    map['leaveRelation'] = _leaveRelation;
    map['logs'] = _logs;
    return map;
  }
}

/// id : 354
/// ruleId : 103
/// sn : "1ae5c76b-6fea-4103-97fc-861275b29658"
/// date : "2024-01-05T16:00:00.000Z"
/// periodId : 155
/// slotId : null
/// from : 25200
/// to : 28800
/// createdAt : "2024-07-05T07:21:47.881Z"
/// updatedAt : "2024-07-05T07:21:47.881Z"
/// rule : {"id":103,"projectId":4,"code":"pUZINWm9ai","title":"周六自由课-考勤规则","authInfo":null,"config":null,"createdAt":"2024-07-05T06:43:00.520Z","updatedAt":"2024-07-05T06:43:00.520Z"}
/// period : {"id":155,"ruleId":103,"code":"f73e031d-2eae-4c15-b1ca-a92d79a76e9f","type":"weekly","day":[6],"from":null,"to":null,"whitelist":null,"remark":"周六自由课_班级打卡周期","createdAt":"2024-07-05T06:43:02.242Z","updatedAt":"2024-07-05T06:43:02.242Z"}
/// slot : null

Time timeFromJson(String str) => Time.fromJson(json.decode(str));
String timeToJson(Time data) => json.encode(data.toJson());

class Time {
  Time({
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
    Rule? rule,
    Period? period,
    dynamic slot,
  }) {
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
    _rule = rule;
    _period = period;
    _slot = slot;
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
    _rule = json['rule'] != null ? Rule.fromJson(json['rule']) : null;
    _period = json['period'] != null ? Period.fromJson(json['period']) : null;
    _slot = json['slot'];
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
  Rule? _rule;
  Period? _period;
  dynamic _slot;

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
  Rule? get rule => _rule;
  Period? get period => _period;
  dynamic get slot => _slot;

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
    if (_rule != null) {
      map['rule'] = _rule?.toJson();
    }
    if (_period != null) {
      map['period'] = _period?.toJson();
    }
    map['slot'] = _slot;
    return map;
  }
}

/// id : 155
/// ruleId : 103
/// code : "f73e031d-2eae-4c15-b1ca-a92d79a76e9f"
/// type : "weekly"
/// day : [6]
/// from : null
/// to : null
/// whitelist : null
/// remark : "周六自由课_班级打卡周期"
/// createdAt : "2024-07-05T06:43:02.242Z"
/// updatedAt : "2024-07-05T06:43:02.242Z"

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
    String? updatedAt,
  }) {
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

/// id : 103
/// projectId : 4
/// code : "pUZINWm9ai"
/// title : "周六自由课-考勤规则"
/// authInfo : null
/// config : null
/// createdAt : "2024-07-05T06:43:00.520Z"
/// updatedAt : "2024-07-05T06:43:00.520Z"

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
  }) {
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

/// id : 18
/// projectId : 4
/// uid : "S0000076"
/// title : "S0000076"
/// info : null
/// createdAt : "2024-07-05T08:02:01.972Z"
/// updatedAt : "2024-07-05T08:02:01.972Z"

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
    String? updatedAt,
  }) {
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

/// id : 13
/// projectId : 4
/// code : "TL"
/// title : "TL"
/// createdAt : "2024-07-05T07:52:17.747Z"
/// updatedAt : "2024-07-05T07:52:17.747Z"

Leave leaveFromJson(String str) => Leave.fromJson(json.decode(str));
String leaveToJson(Leave data) => json.encode(data.toJson());

class Leave {
  Leave({
    num? id,
    num? projectId,
    String? code,
    String? title,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _projectId = projectId;
    _code = code;
    _title = title;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Leave.fromJson(dynamic json) {
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

/// remark : "修改自定义字段数据"

Ext extFromJson(String str) => Ext.fromJson(json.decode(str));
String extToJson(Ext data) => json.encode(data.toJson());

class Ext {
  Ext({
    String? remark,
    String? state,
  }) {
    _remark = remark;
    _state = state;
  }

  Ext.fromJson(dynamic json) {
    _remark = json['remark'];
    _state = json['state'];
  }
  String? _remark;
  String? _state;

  String? get remark => _remark;
  String? get state => _state;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['remark'] = _remark;
    map['state'] = _state;
    return map;
  }
}
