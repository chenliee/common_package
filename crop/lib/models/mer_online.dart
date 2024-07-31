import 'dart:convert';
/// id : 247
/// i18n : "zh-hant"
/// format : "boolean"
/// createdAt : "2024-07-29T06:55:15.607Z"
/// updatedAt : "2024-07-29T06:56:23.241Z"
/// value : false

MerOnline merOnlineFromJson(String str) => MerOnline.fromJson(json.decode(str));
String merOnlineToJson(MerOnline data) => json.encode(data.toJson());
class MerOnline {
  MerOnline({
      num? id, 
      String? i18n, 
      String? format, 
      String? createdAt, 
      String? updatedAt, 
      bool? value,}){
    _id = id;
    _i18n = i18n;
    _format = format;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _value = value;
}

  MerOnline.fromJson(dynamic json) {
    _id = json['id'];
    _i18n = json['i18n'];
    _format = json['format'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _value = json['value'];
  }
  num? _id;
  String? _i18n;
  String? _format;
  String? _createdAt;
  String? _updatedAt;
  bool? _value;

  num? get id => _id;
  String? get i18n => _i18n;
  String? get format => _format;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  bool? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['i18n'] = _i18n;
    map['format'] = _format;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['value'] = _value;
    return map;
  }

}