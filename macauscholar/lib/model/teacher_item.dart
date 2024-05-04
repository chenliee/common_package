import 'dart:convert';

TeacherItem teacherFromJson(String str) =>
    TeacherItem.fromJson(json.decode(str));
String teacherToJson(TeacherItem data) => json.encode(data.toJson());

/// id : 54
/// oldObjectId : "x51Jpz3arY"
/// number : "020"
/// displayName : "梅越明"
/// avatar : null
/// gender : "f"
/// phone : "65990860"
/// description : ""
/// recommend : false
/// createdAt : "2024-03-27T06:26:14.200Z"
/// updatedAt : "2024-03-27T06:34:01.007Z"

class TeacherItem {
  TeacherItem({
    num? id,
    String? oldObjectId,
    String? number,
    String? displayName,
    dynamic avatar,
    String? gender,
    String? phone,
    String? description,
    bool? recommend,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _oldObjectId = oldObjectId;
    _number = number;
    _displayName = displayName;
    _avatar = avatar;
    _gender = gender;
    _phone = phone;
    _description = description;
    _recommend = recommend;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  TeacherItem.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _number = json['number'];
    _displayName = json['displayName'];
    _avatar = json['avatar'];
    _gender = json['gender'];
    _phone = json['phone'];
    _description = json['description'];
    _recommend = json['recommend'];
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
  String? _createdAt;
  String? _updatedAt;
  TeacherItem copyWith({
    num? id,
    String? oldObjectId,
    String? number,
    String? displayName,
    dynamic avatar,
    String? gender,
    String? phone,
    String? description,
    bool? recommend,
    String? createdAt,
    String? updatedAt,
  }) =>
      TeacherItem(
        id: id ?? _id,
        oldObjectId: oldObjectId ?? _oldObjectId,
        number: number ?? _number,
        displayName: displayName ?? _displayName,
        avatar: avatar ?? _avatar,
        gender: gender ?? _gender,
        phone: phone ?? _phone,
        description: description ?? _description,
        recommend: recommend ?? _recommend,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get number => _number;
  String? get displayName => _displayName;
  dynamic get avatar => _avatar;
  String? get gender => _gender;
  String? get phone => _phone;
  String? get description => _description;
  bool? get recommend => _recommend;
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
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}
