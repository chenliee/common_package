import 'dart:convert';
/// id : 57
/// sn : "S2ce6pNlQk"
/// oldObjectId : "S2ce6pNlQk"
/// branch : "B0000879"
/// number : "A00013"
/// name : "儒林1  A課室"
/// order : 0
/// createdAt : "2024-06-24T03:16:51.427Z"
/// updatedAt : "2024-07-05T06:29:33.733Z"

RoomItem roomItemFromJson(String str) => RoomItem.fromJson(json.decode(str));
String roomItemToJson(RoomItem data) => json.encode(data.toJson());
class RoomItem {
  RoomItem({
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

  RoomItem.fromJson(dynamic json) {
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