import 'dart:convert';

import 'package:storage/model/file_item.dart';

/// id : 845
/// oldObjectId : null
/// displayName : "测试学员"
/// number : "TEST"
/// avatar : null
/// gender : "f"
/// phone : "60000000"
/// birthday : "2024-06-19T16:00:00.000Z"
/// referrerId : null
/// autoTransfer : null
/// bindMember : null
/// oldMySQLID : null
/// createdAt : "2024-06-20T06:08:04.267Z"
/// updatedAt : "2024-06-20T06:08:04.267Z"
/// referrer : null
/// Orders : null
/// Enrollments : null

ScholarItem scholarItemFromJson(String str) =>
    ScholarItem.fromJson(json.decode(str));
String scholarItemToJson(ScholarItem data) => json.encode(data.toJson());

class ScholarItem {
  ScholarItem({
    num? id,
    dynamic oldObjectId,
    String? displayName,
    String? number,
    FileItem? avatar,
    String? gender,
    String? phone,
    String? birthday,
    dynamic referrerId,
    dynamic autoTransfer,
    dynamic bindMember,
    dynamic oldMySQLID,
    String? createdAt,
    String? updatedAt,
    dynamic referrer,
    dynamic orders,
    dynamic enrollments,
  }) {
    _id = id;
    _oldObjectId = oldObjectId;
    _displayName = displayName;
    _number = number;
    _avatar = avatar;
    _gender = gender;
    _phone = phone;
    _birthday = birthday;
    _referrerId = referrerId;
    _autoTransfer = autoTransfer;
    _bindMember = bindMember;
    _oldMySQLID = oldMySQLID;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _referrer = referrer;
    _orders = orders;
    _enrollments = enrollments;
  }

  ScholarItem.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _displayName = json['displayName'];
    _number = json['number'];
    _avatar = json['avatar'] != null ? FileItem.fromJson(json['avatar']) : null;
    _gender = json['gender'];
    _phone = json['phone'];
    _birthday = json['birthday'];
    _referrerId = json['referrerId'];
    _autoTransfer = json['autoTransfer'];
    _bindMember = json['bindMember'];
    _oldMySQLID = json['oldMySQLID'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _referrer = json['referrer'];
    _orders = json['Orders'];
    _enrollments = json['Enrollments'];
  }
  num? _id;
  dynamic _oldObjectId;
  String? _displayName;
  String? _number;
  FileItem? _avatar;
  String? _gender;
  String? _phone;
  String? _birthday;
  dynamic _referrerId;
  dynamic _autoTransfer;
  dynamic _bindMember;
  dynamic _oldMySQLID;
  String? _createdAt;
  String? _updatedAt;
  dynamic _referrer;
  dynamic _orders;
  dynamic _enrollments;
  ScholarItem copyWith({
    num? id,
    dynamic oldObjectId,
    String? displayName,
    String? number,
    FileItem? avatar,
    String? gender,
    String? phone,
    String? birthday,
    dynamic referrerId,
    dynamic autoTransfer,
    dynamic bindMember,
    dynamic oldMySQLID,
    String? createdAt,
    String? updatedAt,
    dynamic referrer,
    dynamic orders,
    dynamic enrollments,
  }) =>
      ScholarItem(
        id: id ?? _id,
        oldObjectId: oldObjectId ?? _oldObjectId,
        displayName: displayName ?? _displayName,
        number: number ?? _number,
        avatar: avatar ?? _avatar,
        gender: gender ?? _gender,
        phone: phone ?? _phone,
        birthday: birthday ?? _birthday,
        referrerId: referrerId ?? _referrerId,
        autoTransfer: autoTransfer ?? _autoTransfer,
        bindMember: bindMember ?? _bindMember,
        oldMySQLID: oldMySQLID ?? _oldMySQLID,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        referrer: referrer ?? _referrer,
        orders: orders ?? _orders,
        enrollments: enrollments ?? _enrollments,
      );
  num? get id => _id;
  dynamic get oldObjectId => _oldObjectId;
  String? get displayName => _displayName;
  String? get number => _number;
  FileItem? get avatar => _avatar;
  String? get gender => _gender;
  String? get phone => _phone;
  String? get birthday => _birthday;
  dynamic get referrerId => _referrerId;
  dynamic get autoTransfer => _autoTransfer;
  dynamic get bindMember => _bindMember;
  dynamic get oldMySQLID => _oldMySQLID;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get referrer => _referrer;
  dynamic get orders => _orders;
  dynamic get enrollments => _enrollments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['displayName'] = _displayName;
    map['number'] = _number;
    map['avatar'] = _avatar?.toJson();
    map['gender'] = _gender;
    map['phone'] = _phone;
    map['birthday'] = _birthday;
    map['referrerId'] = _referrerId;
    map['autoTransfer'] = _autoTransfer;
    map['bindMember'] = _bindMember;
    map['oldMySQLID'] = _oldMySQLID;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['referrer'] = _referrer;
    map['Orders'] = _orders;
    map['Enrollments'] = _enrollments;
    return map;
  }
}
