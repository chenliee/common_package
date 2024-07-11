import 'dart:convert';
/// id : 4
/// userId : 6
/// name : "測試"
/// branch : "B0000021"
/// description : null
/// createdAt : "2024-07-08T02:24:44.129Z"
/// updatedAt : "2024-07-08T02:24:44.129Z"

TuitionGroupItem tuitionGroupItemFromJson(String str) => TuitionGroupItem.fromJson(json.decode(str));
String tuitionGroupItemToJson(TuitionGroupItem data) => json.encode(data.toJson());
class TuitionGroupItem {
  TuitionGroupItem({
      num? id, 
      num? userId, 
      String? name, 
      String? branch, 
      dynamic description, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _userId = userId;
    _name = name;
    _branch = branch;
    _description = description;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  TuitionGroupItem.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _name = json['name'];
    _branch = json['branch'];
    _description = json['description'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _userId;
  String? _name;
  String? _branch;
  dynamic _description;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get userId => _userId;
  String? get name => _name;
  String? get branch => _branch;
  dynamic get description => _description;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['name'] = _name;
    map['branch'] = _branch;
    map['description'] = _description;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}