import 'dart:convert';
/// id : 18
/// merchantId : 1
/// group : "photo"
/// name : "50"
/// description : "儒林補習/勵晴1"
/// createdAt : "2024-07-09T06:12:52.570Z"
/// updatedAt : "2024-07-09T06:12:52.570Z"

TagItem tagItemFromJson(String str) => TagItem.fromJson(json.decode(str));
String tagItemToJson(TagItem data) => json.encode(data.toJson());
class TagItem {
  TagItem({
      num? id, 
      num? merchantId, 
      String? group, 
      String? name, 
      String? description, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _merchantId = merchantId;
    _group = group;
    _name = name;
    _description = description;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  TagItem.fromJson(dynamic json) {
    _id = json['id'];
    _merchantId = json['merchantId'];
    _group = json['group'];
    _name = json['name'];
    _description = json['description'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _merchantId;
  String? _group;
  String? _name;
  String? _description;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get group => _group;
  String? get name => _name;
  String? get description => _description;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['merchantId'] = _merchantId;
    map['group'] = _group;
    map['name'] = _name;
    map['description'] = _description;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}