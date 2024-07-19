import 'dart:convert';
/// id : 5
/// targetType : "File"
/// targetId : 388
/// keyId : 3
/// i18n : "zh-hant"
/// value : "2024-07-15T02:10:50.573Z"
/// desc : "2024-07-15T02:10:50.573Z"
/// numeric : null
/// format : null
/// createdAt : "2024-07-15T03:32:27.401Z"
/// refId : null
/// updatedAt : "2024-07-15T03:32:27.401Z"

FileKey fileKeyFromJson(String str) => FileKey.fromJson(json.decode(str));
String fileKeyToJson(FileKey data) => json.encode(data.toJson());
class FileKey {
  FileKey({
      num? id, 
      String? targetType, 
      num? targetId, 
      num? keyId, 
      String? i18n, 
      String? value, 
      String? desc, 
      dynamic numeric, 
      dynamic format, 
      String? createdAt, 
      dynamic refId, 
      String? updatedAt,}){
    _id = id;
    _targetType = targetType;
    _targetId = targetId;
    _keyId = keyId;
    _i18n = i18n;
    _value = value;
    _desc = desc;
    _numeric = numeric;
    _format = format;
    _createdAt = createdAt;
    _refId = refId;
    _updatedAt = updatedAt;
}

  FileKey.fromJson(dynamic json) {
    _id = json['id'];
    _targetType = json['targetType'];
    _targetId = json['targetId'];
    _keyId = json['keyId'];
    _i18n = json['i18n'];
    _value = json['value'];
    _desc = json['desc'];
    _numeric = json['numeric'];
    _format = json['format'];
    _createdAt = json['createdAt'];
    _refId = json['refId'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _targetType;
  num? _targetId;
  num? _keyId;
  String? _i18n;
  String? _value;
  String? _desc;
  dynamic _numeric;
  dynamic _format;
  String? _createdAt;
  dynamic _refId;
  String? _updatedAt;

  num? get id => _id;
  String? get targetType => _targetType;
  num? get targetId => _targetId;
  num? get keyId => _keyId;
  String? get i18n => _i18n;
  String? get value => _value;
  String? get desc => _desc;
  dynamic get numeric => _numeric;
  dynamic get format => _format;
  String? get createdAt => _createdAt;
  dynamic get refId => _refId;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['targetType'] = _targetType;
    map['targetId'] = _targetId;
    map['keyId'] = _keyId;
    map['i18n'] = _i18n;
    map['value'] = _value;
    map['desc'] = _desc;
    map['numeric'] = _numeric;
    map['format'] = _format;
    map['createdAt'] = _createdAt;
    map['refId'] = _refId;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}