/// id : 1
/// keyId : 1
/// title : "去冰"
/// value : 0
/// key : {"id":1,"name":null,"title":"冰","remark":null}

class ExtAttrValueItem {
  ExtAttrValueItem({
      num? id, 
      num? keyId, 
      String? title, 
      num? value, 
      Key? key,}){
    _id = id;
    _keyId = keyId;
    _title = title;
    _value = value;
    _key = key;
}

  ExtAttrValueItem.fromJson(dynamic json) {
    _id = json['id'];
    _keyId = json['keyId'];
    _title = json['title'];
    _value = json['value'];
    _key = json['key'] != null ? Key.fromJson(json['key']) : null;
  }
  num? _id;
  num? _keyId;
  String? _title;
  num? _value;
  Key? _key;
ExtAttrValueItem copyWith({  num? id,
  num? keyId,
  String? title,
  num? value,
  Key? key,
}) => ExtAttrValueItem(  id: id ?? _id,
  keyId: keyId ?? _keyId,
  title: title ?? _title,
  value: value ?? _value,
  key: key ?? _key,
);
  num? get id => _id;
  num? get keyId => _keyId;
  String? get title => _title;
  num? get value => _value;
  Key? get key => _key;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['keyId'] = _keyId;
    map['title'] = _title;
    map['value'] = _value;
    if (_key != null) {
      map['key'] = _key?.toJson();
    }
    return map;
  }

}

/// id : 1
/// name : null
/// title : "冰"
/// remark : null

class Key {
  Key({
      num? id, 
      dynamic name, 
      String? title, 
      dynamic remark,}){
    _id = id;
    _name = name;
    _title = title;
    _remark = remark;
}

  Key.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _title = json['title'];
    _remark = json['remark'];
  }
  num? _id;
  dynamic _name;
  String? _title;
  dynamic _remark;
Key copyWith({  num? id,
  dynamic name,
  String? title,
  dynamic remark,
}) => Key(  id: id ?? _id,
  name: name ?? _name,
  title: title ?? _title,
  remark: remark ?? _remark,
);
  num? get id => _id;
  dynamic get name => _name;
  String? get title => _title;
  dynamic get remark => _remark;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['title'] = _title;
    map['remark'] = _remark;
    return map;
  }

}