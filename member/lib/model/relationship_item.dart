import 'dart:convert';
/// id : 6
/// typeId : 1
/// userFromId : 240
/// userToId : 499
/// createdAt : "2024-06-21T05:23:24.571Z"
/// updatedAt : "2024-06-21T05:23:24.571Z"
/// deletedAt : null

RelationshipItem relationshipItemFromJson(String str) => RelationshipItem.fromJson(json.decode(str));
String relationshipItemToJson(RelationshipItem data) => json.encode(data.toJson());
class RelationshipItem {
  RelationshipItem({
      num? id, 
      num? typeId, 
      num? userFromId, 
      num? userToId, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt,}){
    _id = id;
    _typeId = typeId;
    _userFromId = userFromId;
    _userToId = userToId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
}

  RelationshipItem.fromJson(dynamic json) {
    _id = json['id'];
    _typeId = json['typeId'];
    _userFromId = json['userFromId'];
    _userToId = json['userToId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
  }
  num? _id;
  num? _typeId;
  num? _userFromId;
  num? _userToId;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
RelationshipItem copyWith({  num? id,
  num? typeId,
  num? userFromId,
  num? userToId,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
}) => RelationshipItem(  id: id ?? _id,
  typeId: typeId ?? _typeId,
  userFromId: userFromId ?? _userFromId,
  userToId: userToId ?? _userToId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
);
  num? get id => _id;
  num? get typeId => _typeId;
  num? get userFromId => _userFromId;
  num? get userToId => _userToId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['typeId'] = _typeId;
    map['userFromId'] = _userFromId;
    map['userToId'] = _userToId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    return map;
  }

}