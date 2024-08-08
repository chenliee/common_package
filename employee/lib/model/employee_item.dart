import 'dart:convert';
/// id : 8
/// createdAt : "2024-05-24T07:34:15.248Z"
/// updatedAt : "2024-05-24T07:34:15.248Z"
/// number : "ZH1577"
/// title : "杨仕清"
/// position : "傻逼的程序员"
/// department : {"id":1,"createdAt":"2024-05-27T08:09:53.704Z","updatedAt":"2024-05-27T08:09:53.704Z","code":"RL","title":"儒林部","branches":[",B0000809","B1000009","B1000010"]}

EmployeeItem employeeItemFromJson(String str) => EmployeeItem.fromJson(json.decode(str));
String employeeItemToJson(EmployeeItem data) => json.encode(data.toJson());
class EmployeeItem {
  EmployeeItem({
      num? id, 
      String? createdAt, 
      String? updatedAt, 
      String? number, 
      String? title, 
      String? position, 
      Department? department,}){
    _id = id;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _number = number;
    _title = title;
    _position = position;
    _department = department;
}

  EmployeeItem.fromJson(dynamic json) {
    _id = json['id'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _number = json['number'];
    _title = json['title'];
    _position = json['position'];
    _department = json['department'] != null ? Department.fromJson(json['department']) : null;
  }
  num? _id;
  String? _createdAt;
  String? _updatedAt;
  String? _number;
  String? _title;
  String? _position;
  Department? _department;

  num? get id => _id;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get number => _number;
  String? get title => _title;
  String? get position => _position;
  Department? get department => _department;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['number'] = _number;
    map['title'] = _title;
    map['position'] = _position;
    if (_department != null) {
      map['department'] = _department?.toJson();
    }
    return map;
  }

}

/// id : 1
/// createdAt : "2024-05-27T08:09:53.704Z"
/// updatedAt : "2024-05-27T08:09:53.704Z"
/// code : "RL"
/// title : "儒林部"
/// branches : [",B0000809","B1000009","B1000010"]

Department departmentFromJson(String str) => Department.fromJson(json.decode(str));
String departmentToJson(Department data) => json.encode(data.toJson());
class Department {
  Department({
      num? id, 
      String? createdAt, 
      String? updatedAt, 
      String? code, 
      String? title, 
      List<String>? branches,}){
    _id = id;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _code = code;
    _title = title;
    _branches = branches;
}

  Department.fromJson(dynamic json) {
    _id = json['id'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _code = json['code'];
    _title = json['title'];
    _branches = json['branches'] != null ? json['branches'].cast<String>() : [];
  }
  num? _id;
  String? _createdAt;
  String? _updatedAt;
  String? _code;
  String? _title;
  List<String>? _branches;

  num? get id => _id;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get code => _code;
  String? get title => _title;
  List<String>? get branches => _branches;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['code'] = _code;
    map['title'] = _title;
    map['branches'] = _branches;
    return map;
  }

}