import 'dart:convert';
/// id : 2
/// merchantId : 1
/// code : "MontherAndSon"
/// title : "母子"
/// config : null
/// createdAt : "2024-06-17T06:42:21.066Z"
/// updatedAt : "2024-06-17T06:42:21.066Z"
/// deletedAt : null

RelationItem relationItemFromJson(String str) => RelationItem.fromJson(json.decode(str));
String relationItemToJson(RelationItem data) => json.encode(data.toJson());
class RelationItem {
  RelationItem({
      num? id, 
      num? merchantId, 
      String? code, 
      String? title, 
      dynamic config, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt,}){
    _id = id;
    _merchantId = merchantId;
    _code = code;
    _title = title;
    _config = config;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
}

  RelationItem.fromJson(dynamic json) {
    _id = json['id'];
    _merchantId = json['merchantId'];
    _code = json['code'];
    _title = json['title'];
    _config = json['config'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
  }
  num? _id;
  num? _merchantId;
  String? _code;
  String? _title;
  dynamic _config;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
RelationItem copyWith({  num? id,
  num? merchantId,
  String? code,
  String? title,
  dynamic config,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
}) => RelationItem(  id: id ?? _id,
  merchantId: merchantId ?? _merchantId,
  code: code ?? _code,
  title: title ?? _title,
  config: config ?? _config,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
);
  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get code => _code;
  String? get title => _title;
  dynamic get config => _config;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['merchantId'] = _merchantId;
    map['code'] = _code;
    map['title'] = _title;
    map['config'] = _config;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    return map;
  }

}