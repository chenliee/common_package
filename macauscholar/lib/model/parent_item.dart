import 'dart:convert';

/// id : 26
/// displayName : "IT家长"
/// phone : null
/// idCopy : null
/// branchs : null
/// contacts : null
/// address : "中国"
/// idNo : "124536"
/// member : "95018e43-1b37-4392-a221-a51ca169a1a4"
/// job : null
/// mongoDBId : "5MHUqIUM8n"
/// createdAt : "2022-02-25T02:47:27.369Z"
/// updatedAt : "2024-05-09T05:39:25.351Z"
/// deletedAt : null
/// relation : []

ParentItem parentItemFromJson(String str) =>
    ParentItem.fromJson(json.decode(str));
String parentItemToJson(ParentItem data) => json.encode(data.toJson());

class ParentItem {
  ParentItem({
    num? id,
    String? displayName,
    dynamic phone,
    dynamic idCopy,
    dynamic branchs,
    dynamic contacts,
    String? address,
    String? idNo,
    String? member,
    dynamic job,
    String? mongoDBId,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    List<dynamic>? relation,
  }) {
    _id = id;
    _displayName = displayName;
    _phone = phone;
    _idCopy = idCopy;
    _branchs = branchs;
    _contacts = contacts;
    _address = address;
    _idNo = idNo;
    _member = member;
    _job = job;
    _mongoDBId = mongoDBId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _relation = relation;
  }

  ParentItem.fromJson(dynamic json) {
    _id = json['id'];
    _displayName = json['displayName'];
    _phone = json['phone'];
    _idCopy = json['idCopy'];
    _branchs = json['branchs'];
    _contacts = json['contacts'];
    _address = json['address'];
    _idNo = json['idNo'];
    _member = json['member'];
    _job = json['job'];
    _mongoDBId = json['mongoDBId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    if (json['relation'] != null) {
      _relation = [];
      // json['relation'].forEach((v) {
      //   _relation?.add(Dynamic.fromJson(v));
      // });
    }
  }
  num? _id;
  String? _displayName;
  dynamic _phone;
  dynamic _idCopy;
  dynamic _branchs;
  dynamic _contacts;
  String? _address;
  String? _idNo;
  String? _member;
  dynamic _job;
  String? _mongoDBId;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  List<dynamic>? _relation;
  ParentItem copyWith({
    num? id,
    String? displayName,
    dynamic phone,
    dynamic idCopy,
    dynamic branchs,
    dynamic contacts,
    String? address,
    String? idNo,
    String? member,
    dynamic job,
    String? mongoDBId,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    List<dynamic>? relation,
  }) =>
      ParentItem(
        id: id ?? _id,
        displayName: displayName ?? _displayName,
        phone: phone ?? _phone,
        idCopy: idCopy ?? _idCopy,
        branchs: branchs ?? _branchs,
        contacts: contacts ?? _contacts,
        address: address ?? _address,
        idNo: idNo ?? _idNo,
        member: member ?? _member,
        job: job ?? _job,
        mongoDBId: mongoDBId ?? _mongoDBId,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        deletedAt: deletedAt ?? _deletedAt,
        relation: relation ?? _relation,
      );
  num? get id => _id;
  String? get displayName => _displayName;
  dynamic get phone => _phone;
  dynamic get idCopy => _idCopy;
  dynamic get branchs => _branchs;
  dynamic get contacts => _contacts;
  String? get address => _address;
  String? get idNo => _idNo;
  String? get member => _member;
  dynamic get job => _job;
  String? get mongoDBId => _mongoDBId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  List<dynamic>? get relation => _relation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['displayName'] = _displayName;
    map['phone'] = _phone;
    map['idCopy'] = _idCopy;
    map['branchs'] = _branchs;
    map['contacts'] = _contacts;
    map['address'] = _address;
    map['idNo'] = _idNo;
    map['member'] = _member;
    map['job'] = _job;
    map['mongoDBId'] = _mongoDBId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    if (_relation != null) {
      map['relation'] = _relation?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
