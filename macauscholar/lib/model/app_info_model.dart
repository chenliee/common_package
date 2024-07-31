import 'dart:convert';
/// member : {"version":"3.0.0","notes":["1.测试一下。","2.膳食界面優化。"],"title":"本次更新内容","isForce":false}
/// teacher : {"version":"1.0.11","notes":["1.新增异常提示"],"title":"本次更新内容","isForce":true}

AppInfoModel appInfoModelFromJson(String str) => AppInfoModel.fromJson(json.decode(str));
String appInfoModelToJson(AppInfoModel data) => json.encode(data.toJson());
class AppInfoModel {
  AppInfoModel({
      Member? member, 
      Teacher? teacher,}){
    _member = member;
    _teacher = teacher;
}

  AppInfoModel.fromJson(dynamic json) {
    _member = json['member'] != null ? Member.fromJson(json['member']) : null;
    _teacher = json['teacher'] != null ? Teacher.fromJson(json['teacher']) : null;
  }
  Member? _member;
  Teacher? _teacher;
AppInfoModel copyWith({  Member? member,
  Teacher? teacher,
}) => AppInfoModel(  member: member ?? _member,
  teacher: teacher ?? _teacher,
);
  Member? get member => _member;
  Teacher? get teacher => _teacher;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_member != null) {
      map['member'] = _member?.toJson();
    }
    if (_teacher != null) {
      map['teacher'] = _teacher?.toJson();
    }
    return map;
  }

}

/// version : "1.0.11"
/// notes : ["1.新增异常提示"]
/// title : "本次更新内容"
/// isForce : true

Teacher teacherFromJson(String str) => Teacher.fromJson(json.decode(str));
String teacherToJson(Teacher data) => json.encode(data.toJson());
class Teacher {
  Teacher({
      String? version, 
      List<String>? notes, 
      String? title, 
      bool? isForce,}){
    _version = version;
    _notes = notes;
    _title = title;
    _isForce = isForce;
}

  Teacher.fromJson(dynamic json) {
    _version = json['version'];
    _notes = json['notes'] != null ? json['notes'].cast<String>() : [];
    _title = json['title'];
    _isForce = json['isForce'];
  }
  String? _version;
  List<String>? _notes;
  String? _title;
  bool? _isForce;
Teacher copyWith({  String? version,
  List<String>? notes,
  String? title,
  bool? isForce,
}) => Teacher(  version: version ?? _version,
  notes: notes ?? _notes,
  title: title ?? _title,
  isForce: isForce ?? _isForce,
);
  String? get version => _version;
  List<String>? get notes => _notes;
  String? get title => _title;
  bool? get isForce => _isForce;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['version'] = _version;
    map['notes'] = _notes;
    map['title'] = _title;
    map['isForce'] = _isForce;
    return map;
  }

}

/// version : "3.0.0"
/// notes : ["1.测试一下。","2.膳食界面優化。"]
/// title : "本次更新内容"
/// isForce : false

Member memberFromJson(String str) => Member.fromJson(json.decode(str));
String memberToJson(Member data) => json.encode(data.toJson());
class Member {
  Member({
      String? version, 
      List<String>? notes, 
      String? title, 
      bool? isForce,}){
    _version = version;
    _notes = notes;
    _title = title;
    _isForce = isForce;
}

  Member.fromJson(dynamic json) {
    _version = json['version'];
    _notes = json['notes'] != null ? json['notes'].cast<String>() : [];
    _title = json['title'];
    _isForce = json['isForce'];
  }
  String? _version;
  List<String>? _notes;
  String? _title;
  bool? _isForce;
Member copyWith({  String? version,
  List<String>? notes,
  String? title,
  bool? isForce,
}) => Member(  version: version ?? _version,
  notes: notes ?? _notes,
  title: title ?? _title,
  isForce: isForce ?? _isForce,
);
  String? get version => _version;
  List<String>? get notes => _notes;
  String? get title => _title;
  bool? get isForce => _isForce;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['version'] = _version;
    map['notes'] = _notes;
    map['title'] = _title;
    map['isForce'] = _isForce;
    return map;
  }

}