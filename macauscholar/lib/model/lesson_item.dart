import 'dart:convert';

import 'package:macauscholar/macauscholar.dart';

/// id : 913
/// oldObjectId : "11SSikHtDa"
/// sn : "11SSikHtDa"
/// pointSN : "2c1ebf66-a3a8-4d66-8ad3-370a8bbdbbbd"
/// classId : 465
/// branch : "B1000000"
/// locationId : 55
/// teacherId : 77
/// assistantId : null
/// state : "init"
/// ext : {}
/// remark : null
/// createdAt : "2024-06-24T03:28:57.295Z"
/// updatedAt : "2024-07-05T06:57:31.133Z"
/// class : {"id":465,"oldObjectId":"f9wjQJVvDb","issue":null,"sn":"f9wjQJVvDb","branch":"B1000000","roomId":60,"categoryId":115,"brandId":10,"title":"0202测试版","fee":1,"registrationFee":500,"startDate":"2022-08-05T16:00:00.000Z","endDate":"2024-08-01T16:00:00.000Z","capacity":10,"lessons":5,"lessonPrice":5,"pdac":null,"tags":["recommended","latest","hot"],"order":0,"scheduleDays":[3],"scheduleTimeStart":null,"scheduleTimeEnd":null,"oldMySQLID":null,"color":null,"classEndDate":null,"state":"init","ext1":{"enrolled":17,"realEnrolled":3},"ext2":{},"showInAppList":true,"feeRemark":null,"classRemark":"","timeRemark":null,"discountLessonPrice":5,"discount":false,"allBuy":false,"incomeMode":"lesson","cover":null,"courseId":183,"teacherId":77,"assistantId":null,"createdAt":"2024-06-24T03:26:53.590Z","updatedAt":"2024-07-05T06:41:30.039Z"}
/// pointSnObject : {"id":16,"ruleId":88,"sn":"2c1ebf66-a3a8-4d66-8ad3-370a8bbdbbbd","date":"2023-12-28T16:00:00.000Z","periodId":140,"slotId":null,"from":28800,"to":32400,"createdAt":"2024-07-05T06:44:56.013Z","updatedAt":"2024-07-05T06:57:30.840Z","period":{"id":140,"ruleId":88,"code":"851a9297-6b25-4ee4-bb30-d3485f097c2f","type":"weekly","day":[3],"from":null,"to":null,"whitelist":[],"remark":"0202测试版_班级打卡周期","createdAt":"2024-07-05T06:41:28.214Z","updatedAt":"2024-07-05T06:41:28.214Z"}}

LessonItem lessonItemFromJson(String str) =>
    LessonItem.fromJson(json.decode(str));
String lessonItemToJson(LessonItem data) => json.encode(data.toJson());

class LessonItem {
  LessonItem({
    num? id,
    String? oldObjectId,
    String? sn,
    String? pointSN,
    num? classId,
    String? branch,
    num? locationId,
    num? teacherId,
    dynamic assistantId,
    String? state,
    dynamic ext,
    dynamic remark,
    String? createdAt,
    String? updatedAt,
    ClassItem? classItem,
    TeacherItem? teacherItem,
    PointSnObject? pointSnObject,
  }) {
    _id = id;
    _oldObjectId = oldObjectId;
    _sn = sn;
    _pointSN = pointSN;
    _classId = classId;
    _branch = branch;
    _locationId = locationId;
    _teacherId = teacherId;
    _assistantId = assistantId;
    _state = state;
    _ext = ext;
    _remark = remark;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _classItem = classItem;
    _teacherItem = teacherItem;
    _pointSnObject = pointSnObject;
  }

  LessonItem.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _sn = json['sn'];
    _pointSN = json['pointSN'];
    _classId = json['classId'];
    _branch = json['branch'];
    _locationId = json['locationId'];
    _teacherId = json['teacherId'];
    _assistantId = json['assistantId'];
    _state = json['state'];
    _ext = json['ext'];
    _remark = json['remark'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _classItem =
        json['class'] != null ? ClassItem.fromJson(json['class']) : null;
    _teacherItem =
        json['teacher'] != null ? TeacherItem.fromJson(json['teacher']) : null;
    _pointSnObject = json['pointSnObject'] != null
        ? PointSnObject.fromJson(json['pointSnObject'])
        : null;
  }
  num? _id;
  String? _oldObjectId;
  String? _sn;
  String? _pointSN;
  num? _classId;
  String? _branch;
  num? _locationId;
  num? _teacherId;
  dynamic _assistantId;
  String? _state;
  dynamic _ext;
  dynamic _remark;
  String? _createdAt;
  String? _updatedAt;
  ClassItem? _classItem;
  TeacherItem? _teacherItem;
  PointSnObject? _pointSnObject;
  LessonItem copyWith({
    num? id,
    String? oldObjectId,
    String? sn,
    String? pointSN,
    num? classId,
    String? branch,
    num? locationId,
    num? teacherId,
    dynamic assistantId,
    String? state,
    dynamic ext,
    dynamic remark,
    String? createdAt,
    String? updatedAt,
    ClassItem? classItem,
    TeacherItem? teacherItem,
    PointSnObject? pointSnObject,
  }) =>
      LessonItem(
        id: id ?? _id,
        oldObjectId: oldObjectId ?? _oldObjectId,
        sn: sn ?? _sn,
        pointSN: pointSN ?? _pointSN,
        classId: classId ?? _classId,
        branch: branch ?? _branch,
        locationId: locationId ?? _locationId,
        teacherId: teacherId ?? _teacherId,
        assistantId: assistantId ?? _assistantId,
        state: state ?? _state,
        ext: ext ?? _ext,
        remark: remark ?? _remark,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        classItem: classItem ?? _classItem,
        teacherItem: teacherItem ?? _teacherItem,
        pointSnObject: pointSnObject ?? _pointSnObject,
      );
  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get sn => _sn;
  String? get pointSN => _pointSN;
  num? get classId => _classId;
  String? get branch => _branch;
  num? get locationId => _locationId;
  num? get teacherId => _teacherId;
  dynamic get assistantId => _assistantId;
  String? get state => _state;
  dynamic get ext => _ext;
  dynamic get remark => _remark;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  ClassItem? get classItem => _classItem;
  TeacherItem? get teacherItem => _teacherItem;
  PointSnObject? get pointSnObject => _pointSnObject;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['sn'] = _sn;
    map['pointSN'] = _pointSN;
    map['classId'] = _classId;
    map['branch'] = _branch;
    map['locationId'] = _locationId;
    map['teacherId'] = _teacherId;
    map['assistantId'] = _assistantId;
    map['state'] = _state;
    map['ext'] = _ext;
    map['remark'] = _remark;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_classItem != null) {
      map['class'] = _classItem?.toJson();
    }
    if (_teacherItem != null) {
      map['teacher'] = _teacherItem?.toJson();
    }
    if (_pointSnObject != null) {
      map['pointSnObject'] = _pointSnObject?.toJson();
    }
    return map;
  }
}

/// id : 16
/// ruleId : 88
/// sn : "2c1ebf66-a3a8-4d66-8ad3-370a8bbdbbbd"
/// date : "2023-12-28T16:00:00.000Z"
/// periodId : 140
/// slotId : null
/// from : 28800
/// to : 32400
/// createdAt : "2024-07-05T06:44:56.013Z"
/// updatedAt : "2024-07-05T06:57:30.840Z"
/// period : {"id":140,"ruleId":88,"code":"851a9297-6b25-4ee4-bb30-d3485f097c2f","type":"weekly","day":[3],"from":null,"to":null,"whitelist":[],"remark":"0202测试版_班级打卡周期","createdAt":"2024-07-05T06:41:28.214Z","updatedAt":"2024-07-05T06:41:28.214Z"}

PointSnObject pointSnObjectFromJson(String str) =>
    PointSnObject.fromJson(json.decode(str));
String pointSnObjectToJson(PointSnObject data) => json.encode(data.toJson());

class PointSnObject {
  PointSnObject({
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
    _period = period;
  }

  PointSnObject.fromJson(dynamic json) {
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
  PointSnObject copyWith({
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
  }) =>
      PointSnObject(
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
        period: period ?? _period,
      );
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
    return map;
  }
}

/// id : 140
/// ruleId : 88
/// code : "851a9297-6b25-4ee4-bb30-d3485f097c2f"
/// type : "weekly"
/// day : [3]
/// from : null
/// to : null
/// whitelist : []
/// remark : "0202测试版_班级打卡周期"
/// createdAt : "2024-07-05T06:41:28.214Z"
/// updatedAt : "2024-07-05T06:41:28.214Z"

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
    List<dynamic>? whitelist,
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
    if (json['whitelist'] != null) {
      _whitelist = [];
      // json['whitelist'].forEach((v) {
      //   _whitelist?.add(Dynamic.fromJson(v));
      // });
    }
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
  List<dynamic>? _whitelist;
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
    List<dynamic>? whitelist,
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
  List<dynamic>? get whitelist => _whitelist;
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
    if (_whitelist != null) {
      map['whitelist'] = _whitelist?.map((v) => v.toJson()).toList();
    }
    map['remark'] = _remark;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}
