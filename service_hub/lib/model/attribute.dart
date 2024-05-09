import 'dart:convert';

import 'good_item.dart';

/// id : 2156
/// keyId : 750
/// code : "zonesnack"
/// desc : "優品零食專區"
/// value : 0
/// ext : {"isDefault":0,"attributeValue":"0"}
/// files : {"cover":{"title":"封面","multiple":false,"desc":"商品、分類的封面","value":{"id":4316,"url":"https://storage.dev.heyday-catering.com:20443/saas-service/public/134bc683a84177a5a210fb88264d22f14c2cf0a508554e005bd7d6df2f23bce5_134bc683a84177a5a210fb88264d22f14c2cf0a508554e005bd7d6df2f23bce5_member_center.png","mime":"image/png","name":"134bc683a84177a5a210fb88264d22f14c2cf0a508554e005bd7d6df2f23bce5_member_center.png","size":"498771","hash":"134bc683a84177a5a210fb88264d22f14c2cf0a508554e005bd7d6df2f23bce5"}}}

Attribute attributeFromJson(String str) => Attribute.fromJson(json.decode(str));
String attributeToJson(Attribute data) => json.encode(data.toJson());

class Attribute {
  Attribute({
    num? id,
    num? keyId,
    String? code,
    String? desc,
    num? value,
    Ext? ext,
    Files? files,
  }) {
    _id = id;
    _keyId = keyId;
    _code = code;
    _desc = desc;
    _value = value;
    _ext = ext;
    _files = files;
  }

  Attribute.fromJson(dynamic json) {
    _id = json['id'];
    _keyId = json['keyId'];
    _code = json['code'];
    _desc = json['desc'];
    _value = json['value'];
    _ext = json['ext'] != null ? Ext.fromJson(json['ext']) : null;
    _files = json['files'] != null ? Files.fromJson(json['files']) : null;
  }
  num? _id;
  num? _keyId;
  String? _code;
  String? _desc;
  num? _value;
  Ext? _ext;
  Files? _files;
  Attribute copyWith({
    num? id,
    num? keyId,
    String? code,
    String? desc,
    num? value,
    Ext? ext,
    Files? files,
  }) =>
      Attribute(
        id: id ?? _id,
        keyId: keyId ?? _keyId,
        code: code ?? _code,
        desc: desc ?? _desc,
        value: value ?? _value,
        ext: ext ?? _ext,
        files: files ?? _files,
      );
  num? get id => _id;
  num? get keyId => _keyId;
  String? get code => _code;
  String? get desc => _desc;
  num? get value => _value;
  Ext? get ext => _ext;
  Files? get files => _files;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['keyId'] = _keyId;
    map['code'] = _code;
    map['desc'] = _desc;
    map['value'] = _value;
    if (_ext != null) {
      map['ext'] = _ext?.toJson();
    }
    if (_files != null) {
      map['files'] = _files?.toJson();
    }
    return map;
  }
}
