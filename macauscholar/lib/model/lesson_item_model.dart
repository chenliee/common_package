import 'dart:convert';

import 'class_item.dart';
/// id : 897
/// oldObjectId : "04q3ym7WGb"
/// sn : "04q3ym7WGb"
/// pointSN : "25eb6bc5-d472-4c3d-837f-cd1f6de2d841"
/// classId : 447
/// branch : "B1000000"
/// locationId : 55
/// teacherId : 84
/// assistantId : 84
/// state : "init"
/// ext : {"fee":3,"trainingFee":null,"trainingFeeModel":"hourly"}
/// remark : null
/// createdAt : "2024-06-24T03:27:51.942Z"
/// updatedAt : "2024-07-05T06:57:21.260Z"
/// assistant : {"id":84,"oldObjectId":"w3EuXDZldX","number":"ZH1522","displayName":"张嘉涛","avatar":null,"gender":"f","phone":"1008611","description":" 拥有30年教学经验\n    优秀精英教师","recommend":false,"strongPointSubject":null,"teachingDate":null,"achievements":null,"createdAt":"2024-06-24T03:16:53.205Z","updatedAt":"2024-07-05T06:30:12.446Z"}
/// class : {"id":447,"oldObjectId":"Mg23raWcyu","issue":null,"sn":"Mg23raWcyu","branch":"B1000000","roomId":60,"categoryId":95,"brandId":9,"title":"0205","fee":36,"registrationFee":500,"startDate":"2023-10-30T16:00:00.000Z","endDate":"2023-11-29T16:00:00.000Z","capacity":10,"lessons":12,"lessonPrice":3,"pdac":null,"tags":["recommended"],"order":0,"scheduleDays":[0,1,2,3,4,5,6],"scheduleTimeStart":null,"scheduleTimeEnd":null,"oldMySQLID":null,"color":null,"classEndDate":null,"state":"init","ext1":{"enrolled":1,"realEnrolled":1},"ext2":{"trainingFeeModel":"hourly"},"showInAppList":true,"feeRemark":null,"classRemark":"","timeRemark":null,"discountLessonPrice":3,"discount":false,"allBuy":false,"incomeMode":"lesson","cover":null,"courseId":240,"teacherId":84,"assistantId":84,"createdAt":"2024-06-24T03:26:15.446Z","updatedAt":"2024-07-05T06:39:24.907Z"}
/// location : {"id":55,"sn":"GXWVySOcXE","oldObjectId":"GXWVySOcXE","branch":"B1000000","number":"IT000123","name":"IT賬號","order":0,"createdAt":"2024-06-24T03:16:51.292Z","updatedAt":"2024-07-05T06:29:30.421Z"}
/// teacher : {"id":84,"oldObjectId":"w3EuXDZldX","number":"ZH1522","displayName":"张嘉涛","avatar":null,"gender":"f","phone":"1008611","description":" 拥有30年教学经验\n    优秀精英教师","recommend":false,"strongPointSubject":null,"teachingDate":null,"achievements":null,"createdAt":"2024-06-24T03:16:53.205Z","updatedAt":"2024-07-05T06:30:12.446Z"}

LessonItemModel lessonItemModelFromJson(String str) => LessonItemModel.fromJson(json.decode(str));
String lessonItemModelToJson(LessonItemModel data) => json.encode(data.toJson());
class LessonItemModel {
  LessonItemModel({
      num? id, 
      String? oldObjectId, 
      String? sn, 
      String? pointSN, 
      num? classId, 
      String? branch, 
      num? locationId, 
      num? teacherId, 
      num? assistantId, 
      String? state, 
      Ext? ext, 
      dynamic remark, 
      String? createdAt, 
      String? updatedAt, 
      Assistant? assistant, 
      ClassItem? classItem,
      Location? location, 
      Teacher? teacher,}){
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
    _assistant = assistant;
    _class = classItem;
    _location = location;
    _teacher = teacher;
}

  LessonItemModel.fromJson(dynamic json) {
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
    _ext = json['ext'] != null ? Ext.fromJson(json['ext']) : null;
    _remark = json['remark'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _assistant = json['assistant'] != null ? Assistant.fromJson(json['assistant']) : null;
    _class = json['class'] != null ? ClassItem.fromJson(json['class']) : null;
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _teacher = json['teacher'] != null ? Teacher.fromJson(json['teacher']) : null;
  }
  num? _id;
  String? _oldObjectId;
  String? _sn;
  String? _pointSN;
  num? _classId;
  String? _branch;
  num? _locationId;
  num? _teacherId;
  num? _assistantId;
  String? _state;
  Ext? _ext;
  dynamic _remark;
  String? _createdAt;
  String? _updatedAt;
  Assistant? _assistant;
  ClassItem? _class;
  Location? _location;
  Teacher? _teacher;

  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get sn => _sn;
  String? get pointSN => _pointSN;
  num? get classId => _classId;
  String? get branch => _branch;
  num? get locationId => _locationId;
  num? get teacherId => _teacherId;
  num? get assistantId => _assistantId;
  String? get state => _state;
  Ext? get ext => _ext;
  dynamic get remark => _remark;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Assistant? get assistant => _assistant;
  ClassItem? get classItem => _class;
  Location? get location => _location;
  Teacher? get teacher => _teacher;

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
    if (_ext != null) {
      map['ext'] = _ext?.toJson();
    }
    map['remark'] = _remark;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_assistant != null) {
      map['assistant'] = _assistant?.toJson();
    }
    if (_class != null) {
      map['class'] = _class?.toJson();
    }
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    if (_teacher != null) {
      map['teacher'] = _teacher?.toJson();
    }
    return map;
  }

}

/// id : 84
/// oldObjectId : "w3EuXDZldX"
/// number : "ZH1522"
/// displayName : "张嘉涛"
/// avatar : null
/// gender : "f"
/// phone : "1008611"
/// description : " 拥有30年教学经验\n    优秀精英教师"
/// recommend : false
/// strongPointSubject : null
/// teachingDate : null
/// achievements : null
/// createdAt : "2024-06-24T03:16:53.205Z"
/// updatedAt : "2024-07-05T06:30:12.446Z"

Teacher teacherFromJson(String str) => Teacher.fromJson(json.decode(str));
String teacherToJson(Teacher data) => json.encode(data.toJson());
class Teacher {
  Teacher({
      num? id, 
      String? oldObjectId, 
      String? number, 
      String? displayName, 
      dynamic avatar, 
      String? gender, 
      String? phone, 
      String? description, 
      bool? recommend, 
      dynamic strongPointSubject, 
      dynamic teachingDate, 
      dynamic achievements, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _oldObjectId = oldObjectId;
    _number = number;
    _displayName = displayName;
    _avatar = avatar;
    _gender = gender;
    _phone = phone;
    _description = description;
    _recommend = recommend;
    _strongPointSubject = strongPointSubject;
    _teachingDate = teachingDate;
    _achievements = achievements;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Teacher.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _number = json['number'];
    _displayName = json['displayName'];
    _avatar = json['avatar'];
    _gender = json['gender'];
    _phone = json['phone'];
    _description = json['description'];
    _recommend = json['recommend'];
    _strongPointSubject = json['strongPointSubject'];
    _teachingDate = json['teachingDate'];
    _achievements = json['achievements'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _oldObjectId;
  String? _number;
  String? _displayName;
  dynamic _avatar;
  String? _gender;
  String? _phone;
  String? _description;
  bool? _recommend;
  dynamic _strongPointSubject;
  dynamic _teachingDate;
  dynamic _achievements;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get number => _number;
  String? get displayName => _displayName;
  dynamic get avatar => _avatar;
  String? get gender => _gender;
  String? get phone => _phone;
  String? get description => _description;
  bool? get recommend => _recommend;
  dynamic get strongPointSubject => _strongPointSubject;
  dynamic get teachingDate => _teachingDate;
  dynamic get achievements => _achievements;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['number'] = _number;
    map['displayName'] = _displayName;
    map['avatar'] = _avatar;
    map['gender'] = _gender;
    map['phone'] = _phone;
    map['description'] = _description;
    map['recommend'] = _recommend;
    map['strongPointSubject'] = _strongPointSubject;
    map['teachingDate'] = _teachingDate;
    map['achievements'] = _achievements;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// id : 55
/// sn : "GXWVySOcXE"
/// oldObjectId : "GXWVySOcXE"
/// branch : "B1000000"
/// number : "IT000123"
/// name : "IT賬號"
/// order : 0
/// createdAt : "2024-06-24T03:16:51.292Z"
/// updatedAt : "2024-07-05T06:29:30.421Z"

Location locationFromJson(String str) => Location.fromJson(json.decode(str));
String locationToJson(Location data) => json.encode(data.toJson());
class Location {
  Location({
      num? id, 
      String? sn, 
      String? oldObjectId, 
      String? branch, 
      String? number, 
      String? name, 
      num? order, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _sn = sn;
    _oldObjectId = oldObjectId;
    _branch = branch;
    _number = number;
    _name = name;
    _order = order;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Location.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _oldObjectId = json['oldObjectId'];
    _branch = json['branch'];
    _number = json['number'];
    _name = json['name'];
    _order = json['order'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _sn;
  String? _oldObjectId;
  String? _branch;
  String? _number;
  String? _name;
  num? _order;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get sn => _sn;
  String? get oldObjectId => _oldObjectId;
  String? get branch => _branch;
  String? get number => _number;
  String? get name => _name;
  num? get order => _order;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sn'] = _sn;
    map['oldObjectId'] = _oldObjectId;
    map['branch'] = _branch;
    map['number'] = _number;
    map['name'] = _name;
    map['order'] = _order;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}



/// trainingFeeModel : "hourly"

Ext2 ext2FromJson(String str) => Ext2.fromJson(json.decode(str));
String ext2ToJson(Ext2 data) => json.encode(data.toJson());
class Ext2 {
  Ext2({
      String? trainingFeeModel,}){
    _trainingFeeModel = trainingFeeModel;
}

  Ext2.fromJson(dynamic json) {
    _trainingFeeModel = json['trainingFeeModel'];
  }
  String? _trainingFeeModel;

  String? get trainingFeeModel => _trainingFeeModel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['trainingFeeModel'] = _trainingFeeModel;
    return map;
  }

}

/// enrolled : 1
/// realEnrolled : 1

Ext1 ext1FromJson(String str) => Ext1.fromJson(json.decode(str));
String ext1ToJson(Ext1 data) => json.encode(data.toJson());
class Ext1 {
  Ext1({
      num? enrolled, 
      num? realEnrolled,}){
    _enrolled = enrolled;
    _realEnrolled = realEnrolled;
}

  Ext1.fromJson(dynamic json) {
    _enrolled = json['enrolled'];
    _realEnrolled = json['realEnrolled'];
  }
  num? _enrolled;
  num? _realEnrolled;

  num? get enrolled => _enrolled;
  num? get realEnrolled => _realEnrolled;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enrolled'] = _enrolled;
    map['realEnrolled'] = _realEnrolled;
    return map;
  }

}

/// id : 84
/// oldObjectId : "w3EuXDZldX"
/// number : "ZH1522"
/// displayName : "张嘉涛"
/// avatar : null
/// gender : "f"
/// phone : "1008611"
/// description : " 拥有30年教学经验\n    优秀精英教师"
/// recommend : false
/// strongPointSubject : null
/// teachingDate : null
/// achievements : null
/// createdAt : "2024-06-24T03:16:53.205Z"
/// updatedAt : "2024-07-05T06:30:12.446Z"

Assistant assistantFromJson(String str) => Assistant.fromJson(json.decode(str));
String assistantToJson(Assistant data) => json.encode(data.toJson());
class Assistant {
  Assistant({
      num? id, 
      String? oldObjectId, 
      String? number, 
      String? displayName, 
      dynamic avatar, 
      String? gender, 
      String? phone, 
      String? description, 
      bool? recommend, 
      dynamic strongPointSubject, 
      dynamic teachingDate, 
      dynamic achievements, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _oldObjectId = oldObjectId;
    _number = number;
    _displayName = displayName;
    _avatar = avatar;
    _gender = gender;
    _phone = phone;
    _description = description;
    _recommend = recommend;
    _strongPointSubject = strongPointSubject;
    _teachingDate = teachingDate;
    _achievements = achievements;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Assistant.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _number = json['number'];
    _displayName = json['displayName'];
    _avatar = json['avatar'];
    _gender = json['gender'];
    _phone = json['phone'];
    _description = json['description'];
    _recommend = json['recommend'];
    _strongPointSubject = json['strongPointSubject'];
    _teachingDate = json['teachingDate'];
    _achievements = json['achievements'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _oldObjectId;
  String? _number;
  String? _displayName;
  dynamic _avatar;
  String? _gender;
  String? _phone;
  String? _description;
  bool? _recommend;
  dynamic _strongPointSubject;
  dynamic _teachingDate;
  dynamic _achievements;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get number => _number;
  String? get displayName => _displayName;
  dynamic get avatar => _avatar;
  String? get gender => _gender;
  String? get phone => _phone;
  String? get description => _description;
  bool? get recommend => _recommend;
  dynamic get strongPointSubject => _strongPointSubject;
  dynamic get teachingDate => _teachingDate;
  dynamic get achievements => _achievements;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['number'] = _number;
    map['displayName'] = _displayName;
    map['avatar'] = _avatar;
    map['gender'] = _gender;
    map['phone'] = _phone;
    map['description'] = _description;
    map['recommend'] = _recommend;
    map['strongPointSubject'] = _strongPointSubject;
    map['teachingDate'] = _teachingDate;
    map['achievements'] = _achievements;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// fee : 3
/// trainingFee : null
/// trainingFeeModel : "hourly"

Ext extFromJson(String str) => Ext.fromJson(json.decode(str));
String extToJson(Ext data) => json.encode(data.toJson());
class Ext {
  Ext({
      num? fee, 
      dynamic trainingFee, 
      String? trainingFeeModel,}){
    _fee = fee;
    _trainingFee = trainingFee;
    _trainingFeeModel = trainingFeeModel;
}

  Ext.fromJson(dynamic json) {
    _fee = json['fee'];
    _trainingFee = json['trainingFee'];
    _trainingFeeModel = json['trainingFeeModel'];
  }
  num? _fee;
  dynamic _trainingFee;
  String? _trainingFeeModel;

  num? get fee => _fee;
  dynamic get trainingFee => _trainingFee;
  String? get trainingFeeModel => _trainingFeeModel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fee'] = _fee;
    map['trainingFee'] = _trainingFee;
    map['trainingFeeModel'] = _trainingFeeModel;
    return map;
  }

}