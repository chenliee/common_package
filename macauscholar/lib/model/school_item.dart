import 'dart:convert';

/// id : 107
/// code : "00013"
/// displayName : "聖諾瑟第五分校"
/// order : 0
/// location : "123,123"
/// mongoDBId : "nEDotBzIX6"
/// createdAt : "2022-07-27T08:09:28.803Z"
/// updatedAt : "2024-06-26T02:07:03.806Z"
/// deletedAt : null

SchoolItem schoolItemFromJson(String str) =>
    SchoolItem.fromJson(json.decode(str));
String schoolItemToJson(SchoolItem data) => json.encode(data.toJson());

class SchoolItem {
  SchoolItem({
    num? id,
    String? code,
    String? displayName,
    num? order,
    String? location,
    String? mongoDBId,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
  }) {
    _id = id;
    _code = code;
    _displayName = displayName;
    _order = order;
    _location = location;
    _mongoDBId = mongoDBId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SchoolItem &&
          runtimeType == other.runtimeType &&
          _id == other._id &&
          _code == other._code;

  @override
  int get hashCode => _id.hashCode ^ _code.hashCode;

  SchoolItem.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _displayName = json['displayName'];
    _order = json['order'];
    _location = json['location'];
    _mongoDBId = json['mongoDBId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
  }
  num? _id;
  String? _code;
  String? _displayName;
  num? _order;
  String? _location;
  String? _mongoDBId;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  SchoolItem copyWith({
    num? id,
    String? code,
    String? displayName,
    num? order,
    String? location,
    String? mongoDBId,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
  }) =>
      SchoolItem(
        id: id ?? _id,
        code: code ?? _code,
        displayName: displayName ?? _displayName,
        order: order ?? _order,
        location: location ?? _location,
        mongoDBId: mongoDBId ?? _mongoDBId,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        deletedAt: deletedAt ?? _deletedAt,
      );
  num? get id => _id;
  String? get code => _code;
  String? get displayName => _displayName;
  num? get order => _order;
  String? get location => _location;
  String? get mongoDBId => _mongoDBId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['displayName'] = _displayName;
    map['order'] = _order;
    map['location'] = _location;
    map['mongoDBId'] = _mongoDBId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    return map;
  }
}
