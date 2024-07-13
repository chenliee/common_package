import 'dart:convert';
/// id : 6
/// uid : "f4061f30-809f-4bc4-a468-7c45d4f59d47"
/// rules : ["employee"]
/// createdAt : "2024-07-08T01:25:31.756Z"
/// updatedAt : "2024-07-08T01:25:31.756Z"

EmployeeItem employeeItemFromJson(String str) => EmployeeItem.fromJson(json.decode(str));
String employeeItemToJson(EmployeeItem data) => json.encode(data.toJson());
class EmployeeItem {
  EmployeeItem({
      num? id, 
      String? uid, 
      List<String>? rules, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _uid = uid;
    _rules = rules;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  EmployeeItem.fromJson(dynamic json) {
    _id = json['id'];
    _uid = json['uid'];
    _rules = json['rules'] != null ? json['rules'].cast<String>() : [];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _uid;
  List<String>? _rules;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get uid => _uid;
  List<String>? get rules => _rules;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['uid'] = _uid;
    map['rules'] = _rules;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}