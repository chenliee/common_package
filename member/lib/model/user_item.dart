import 'dart:convert';
/// id : 95
/// sn : "4ae3447c-3c99-4422-8744-f352f1a02e5e"
/// userId : "uat231200200017"
/// merchantId : 2
/// username : "杰_uat"
/// sex : 0
/// avatarFileId : 81
/// email : null
/// birthday : "2002-07-15"
/// habbit : null
/// rules : ["member"]
/// type : null
/// createdAt : "2023-12-27T06:39:35.904Z"
/// updatedAt : "2024-07-15T05:40:02.504Z"
/// deletedAt : null
/// Contact : [{"id":23,"userId":95,"merchantId":2,"type":"phone","value":"86.17607601208","createdAt":"2024-07-05T06:57:03.230Z","updatedAt":"2024-07-05T06:57:03.230Z","deletedAt":null}]
/// avatar : "https://storage.uat.heyday-catering.com/member/public/1e14c27e706da600cf8ea003500b52e141abbec9129b202a438a45f9f2d787bd_upload_1706521734149.0.1481238148675137.0.jpg"

UserItem userItemFromJson(String str) => UserItem.fromJson(json.decode(str));
String userItemToJson(UserItem data) => json.encode(data.toJson());
class UserItem {
  UserItem({
    num? id,
    String? sn,
    String? userId,
    num? merchantId,
    String? username,
    num? sex,
    num? avatarFileId,
    dynamic email,
    String? birthday,
    dynamic habbit,
    List<String>? rules,
    dynamic type,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    List<Contact>? contact,
    String? avatar,}){
    _id = id;
    _sn = sn;
    _userId = userId;
    _merchantId = merchantId;
    _username = username;
    _sex = sex;
    _avatarFileId = avatarFileId;
    _email = email;
    _birthday = birthday;
    _habbit = habbit;
    _rules = rules;
    _type = type;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _contact = contact;
    _avatar = avatar;
  }

  UserItem.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _userId = json['userId'];
    _merchantId = json['merchantId'];
    _username = json['username'];
    _sex = json['sex'];
    _avatarFileId = json['avatarFileId'];
    _email = json['email'];
    _birthday = json['birthday'];
    _habbit = json['habbit'];
    _rules = json['rules'] != null ? json['rules'].cast<String>() : [];
    _type = json['type'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    if (json['Contact'] != null) {
      _contact = [];
      json['Contact'].forEach((v) {
        _contact?.add(Contact.fromJson(v));
      });
    }
    _avatar = json['avatar'];
  }
  num? _id;
  String? _sn;
  String? _userId;
  num? _merchantId;
  String? _username;
  num? _sex;
  num? _avatarFileId;
  dynamic _email;
  String? _birthday;
  dynamic _habbit;
  List<String>? _rules;
  dynamic _type;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  List<Contact>? _contact;
  String? _avatar;

  num? get id => _id;
  String? get sn => _sn;
  String? get userId => _userId;
  num? get merchantId => _merchantId;
  String? get username => _username;
  num? get sex => _sex;
  num? get avatarFileId => _avatarFileId;
  dynamic get email => _email;
  String? get birthday => _birthday;
  dynamic get habbit => _habbit;
  List<String>? get rules => _rules;
  dynamic get type => _type;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  List<Contact>? get contact => _contact;
  String? get avatar => _avatar;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sn'] = _sn;
    map['userId'] = _userId;
    map['merchantId'] = _merchantId;
    map['username'] = _username;
    map['sex'] = _sex;
    map['avatarFileId'] = _avatarFileId;
    map['email'] = _email;
    map['birthday'] = _birthday;
    map['habbit'] = _habbit;
    map['rules'] = _rules;
    map['type'] = _type;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    if (_contact != null) {
      map['Contact'] = _contact?.map((v) => v.toJson()).toList();
    }
    map['avatar'] = _avatar;
    return map;
  }

}

/// id : 23
/// userId : 95
/// merchantId : 2
/// type : "phone"
/// value : "86.17607601208"
/// createdAt : "2024-07-05T06:57:03.230Z"
/// updatedAt : "2024-07-05T06:57:03.230Z"
/// deletedAt : null

Contact contactFromJson(String str) => Contact.fromJson(json.decode(str));
String contactToJson(Contact data) => json.encode(data.toJson());
class Contact {
  Contact({
    num? id,
    num? userId,
    num? merchantId,
    String? type,
    String? value,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,}){
    _id = id;
    _userId = userId;
    _merchantId = merchantId;
    _type = type;
    _value = value;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
  }

  Contact.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _merchantId = json['merchantId'];
    _type = json['type'];
    _value = json['value'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
  }
  num? _id;
  num? _userId;
  num? _merchantId;
  String? _type;
  String? _value;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;

  num? get id => _id;
  num? get userId => _userId;
  num? get merchantId => _merchantId;
  String? get type => _type;
  String? get value => _value;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['merchantId'] = _merchantId;
    map['type'] = _type;
    map['value'] = _value;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    return map;
  }

}