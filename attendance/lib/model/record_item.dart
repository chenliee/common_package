import 'dart:convert';

import 'package:attendance/model/update_recoed.dart';

/// id : 244
/// sn : "9dd30774-2ac6-443b-be28-bc36259c5b9f"
/// timeId : 683
/// memberId : 48
/// leaveId : null
/// ext : {"state":"arrived","branch":"B0000879","student":"ZH1334","beatCard":"app打卡","checkInAt":"2023-12-18T05:20:08.208Z","oldObjectId":"3l0db9K01I"}
/// createdAt : "2024-07-08T07:12:10.546Z"
/// updatedAt : "2024-07-08T07:18:29.063Z"
/// leave : null
/// member : {"id":48,"projectId":3,"uid":"ZH1334","title":"小明同学","info":null,"createdAt":"2024-07-08T07:11:37.459Z","updatedAt":"2024-07-08T07:11:37.459Z"}
/// time : {"id":683,"ruleId":9,"sn":"60596d7e-3a2c-45e5-aaa0-5e9743e6cf05","date":"2023-12-17T16:00:00.000Z","periodId":12,"slotId":13,"from":36000,"to":50400,"createdAt":"2024-07-08T07:11:37.131Z","updatedAt":"2024-07-08T07:18:29.002Z","slot":{"id":13,"periodId":12,"from":36000,"to":50400,"sn":"d996df37-0af7-4817-90c7-aaaf36b7c4e6","remark":"早上10點到中午2點","createdAt":"2024-07-05T06:31:30.837Z","updatedAt":"2024-07-05T06:31:30.837Z"},"period":{"id":12,"ruleId":9,"code":"day1to5","type":"weekly","day":[1,2,3,4,5],"from":null,"to":null,"whitelist":null,"remark":"星期一至五","createdAt":"2024-07-05T06:28:27.647Z","updatedAt":"2024-07-05T06:28:27.647Z"}}
/// logs : [{"id":2,"sn":"18fd08bf-2421-4e43-8f01-a0ca441e54fd","memberId":48,"recordId":244,"grpcUid":null,"deviceSN":null,"time":1702876808,"ext":{"state":"arrived"},"createdAt":"2024-07-08T07:12:10.970Z","updatedAt":"2024-07-08T07:12:10.970Z"}]

RecordItem recordItemFromJson(String str) =>
    RecordItem.fromJson(json.decode(str));
String recordItemToJson(RecordItem data) => json.encode(data.toJson());

class RecordItem {
  RecordItem({
    num? id,
    String? sn,
    num? timeId,
    num? memberId,
    dynamic leaveId,
    Ext? ext,
    String? createdAt,
    String? updatedAt,
    dynamic leave,
    Member? member,
    Time? time,
    List<Logs>? logs,
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
    _logs = logs;
  }

  RecordItem.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _timeId = json['timeId'];
    _memberId = json['memberId'];
    _leaveId = json['leaveId'];
    _ext = json['ext'] != null ? Ext.fromJson(json['ext']) : null;
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
  Ext? _ext;
  String? _createdAt;
  String? _updatedAt;
  dynamic _leave;
  Member? _member;
  Time? _time;
  List<Logs>? _logs;
  RecordItem copyWith({
    num? id,
    String? sn,
    num? timeId,
    num? memberId,
    dynamic leaveId,
    Ext? ext,
    String? createdAt,
    String? updatedAt,
    dynamic leave,
    Member? member,
    Time? time,
    List<Logs>? logs,
  }) =>
      RecordItem(
        id: id ?? _id,
        sn: sn ?? _sn,
        timeId: timeId ?? _timeId,
        memberId: memberId ?? _memberId,
        leaveId: leaveId ?? _leaveId,
        ext: ext ?? _ext,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        leave: leave ?? _leave,
        member: member ?? _member,
        time: time ?? _time,
        logs: logs ?? _logs,
      );
  num? get id => _id;
  String? get sn => _sn;
  num? get timeId => _timeId;
  num? get memberId => _memberId;
  dynamic get leaveId => _leaveId;
  Ext? get ext => _ext;
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
    if (_ext != null) {
      map['ext'] = _ext?.toJson();
    }
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
/// sn : "18fd08bf-2421-4e43-8f01-a0ca441e54fd"
/// memberId : 48
/// recordId : 244
/// grpcUid : null
/// deviceSN : null
/// time : 1702876808
/// ext : {"state":"arrived"}
/// createdAt : "2024-07-08T07:12:10.970Z"
/// updatedAt : "2024-07-08T07:12:10.970Z"

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
    LogExt? ext,
    String? createdAt,
    String? updatedAt,
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
  }

  Logs.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _memberId = json['memberId'];
    _recordId = json['recordId'];
    _grpcUid = json['grpcUid'];
    _deviceSN = json['deviceSN'];
    _time = json['time'];
    _ext = json['ext'] != null ? LogExt.fromJson(json['ext']) : null;
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
  LogExt? _ext;
  String? _createdAt;
  String? _updatedAt;
  Logs copyWith({
    num? id,
    String? sn,
    num? memberId,
    num? recordId,
    dynamic grpcUid,
    dynamic deviceSN,
    num? time,
    LogExt? ext,
    String? createdAt,
    String? updatedAt,
  }) =>
      Logs(
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
      );
  num? get id => _id;
  String? get sn => _sn;
  num? get memberId => _memberId;
  num? get recordId => _recordId;
  dynamic get grpcUid => _grpcUid;
  dynamic get deviceSN => _deviceSN;
  num? get time => _time;
  LogExt? get ext => _ext;
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
    if (_ext != null) {
      map['ext'] = _ext?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}

/// state : "arrived"

class LogExt {
  LogExt({
    String? state,
  }) {
    _state = state;
  }

  LogExt.fromJson(dynamic json) {
    _state = json['state'];
  }
  String? _state;
  LogExt copyWith({
    String? state,
  }) =>
      LogExt(
        state: state ?? _state,
      );
  String? get state => _state;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['state'] = _state;
    return map;
  }
}

/// id : 683
/// ruleId : 9
/// sn : "60596d7e-3a2c-45e5-aaa0-5e9743e6cf05"
/// date : "2023-12-17T16:00:00.000Z"
/// periodId : 12
/// slotId : 13
/// from : 36000
/// to : 50400
/// createdAt : "2024-07-08T07:11:37.131Z"
/// updatedAt : "2024-07-08T07:18:29.002Z"
/// slot : {"id":13,"periodId":12,"from":36000,"to":50400,"sn":"d996df37-0af7-4817-90c7-aaaf36b7c4e6","remark":"早上10點到中午2點","createdAt":"2024-07-05T06:31:30.837Z","updatedAt":"2024-07-05T06:31:30.837Z"}
/// period : {"id":12,"ruleId":9,"code":"day1to5","type":"weekly","day":[1,2,3,4,5],"from":null,"to":null,"whitelist":null,"remark":"星期一至五","createdAt":"2024-07-05T06:28:27.647Z","updatedAt":"2024-07-05T06:28:27.647Z"}

Time timeFromJson(String str) => Time.fromJson(json.decode(str));
String timeToJson(Time data) => json.encode(data.toJson());

class Time {
  Time({
    num? id,
    num? ruleId,
    String? sn,
    String? date,
    num? periodId,
    num? slotId,
    num? from,
    num? to,
    String? createdAt,
    String? updatedAt,
    Slot? slot,
    Period? period,
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
    _slot = slot;
    _period = period;
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
    _slot = json['slot'] != null ? Slot.fromJson(json['slot']) : null;
    _period = json['period'] != null ? Period.fromJson(json['period']) : null;
  }
  num? _id;
  num? _ruleId;
  String? _sn;
  String? _date;
  num? _periodId;
  num? _slotId;
  num? _from;
  num? _to;
  String? _createdAt;
  String? _updatedAt;
  Slot? _slot;
  Period? _period;
  Time copyWith({
    num? id,
    num? ruleId,
    String? sn,
    String? date,
    num? periodId,
    num? slotId,
    num? from,
    num? to,
    String? createdAt,
    String? updatedAt,
    Slot? slot,
    Period? period,
  }) =>
      Time(
        id: id ?? _id,
        ruleId: ruleId ?? _ruleId,
        sn: sn ?? _sn,
        date: date ?? _date,
        periodId: periodId ?? _periodId,
        slotId: slotId ?? _slotId,
        from: from ?? _from,
        to: to ?? _to,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        slot: slot ?? _slot,
        period: period ?? _period,
      );
  num? get id => _id;
  num? get ruleId => _ruleId;
  String? get sn => _sn;
  String? get date => _date;
  num? get periodId => _periodId;
  num? get slotId => _slotId;
  num? get from => _from;
  num? get to => _to;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Slot? get slot => _slot;
  Period? get period => _period;

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
    if (_slot != null) {
      map['slot'] = _slot?.toJson();
    }
    if (_period != null) {
      map['period'] = _period?.toJson();
    }
    return map;
  }
}

/// id : 12
/// ruleId : 9
/// code : "day1to5"
/// type : "weekly"
/// day : [1,2,3,4,5]
/// from : null
/// to : null
/// whitelist : null
/// remark : "星期一至五"
/// createdAt : "2024-07-05T06:28:27.647Z"
/// updatedAt : "2024-07-05T06:28:27.647Z"

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
  Period copyWith({
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
  }) =>
      Period(
        id: id ?? _id,
        ruleId: ruleId ?? _ruleId,
        code: code ?? _code,
        type: type ?? _type,
        day: day ?? _day,
        from: from ?? _from,
        to: to ?? _to,
        whitelist: whitelist ?? _whitelist,
        remark: remark ?? _remark,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
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

/// id : 13
/// periodId : 12
/// from : 36000
/// to : 50400
/// sn : "d996df37-0af7-4817-90c7-aaaf36b7c4e6"
/// remark : "早上10點到中午2點"
/// createdAt : "2024-07-05T06:31:30.837Z"
/// updatedAt : "2024-07-05T06:31:30.837Z"

Slot slotFromJson(String str) => Slot.fromJson(json.decode(str));
String slotToJson(Slot data) => json.encode(data.toJson());

class Slot {
  Slot({
    num? id,
    num? periodId,
    num? from,
    num? to,
    String? sn,
    String? remark,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _periodId = periodId;
    _from = from;
    _to = to;
    _sn = sn;
    _remark = remark;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Slot.fromJson(dynamic json) {
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
  Slot copyWith({
    num? id,
    num? periodId,
    num? from,
    num? to,
    String? sn,
    String? remark,
    String? createdAt,
    String? updatedAt,
  }) =>
      Slot(
        id: id ?? _id,
        periodId: periodId ?? _periodId,
        from: from ?? _from,
        to: to ?? _to,
        sn: sn ?? _sn,
        remark: remark ?? _remark,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
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
