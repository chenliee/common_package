/// id : 1
/// targetType : "good"
/// targetId : 38
/// keyId : 1
/// title : null
/// remark : null
/// values : null
/// key : {"id":1,"name":null,"title":"冰","remark":null}

class GoodExtAttrItem {
  GoodExtAttrItem({
    num? id,
    String? targetType,
    num? targetId,
    num? keyId,
    dynamic title,
    dynamic remark,
    dynamic values,
    Key? key,
  }) {
    _id = id;
    _targetType = targetType;
    _targetId = targetId;
    _keyId = keyId;
    _title = title;
    _remark = remark;
    _values = values;
    _key = key;
  }

  GoodExtAttrItem.fromJson(dynamic json) {
    _id = json['id'];
    _targetType = json['targetType'];
    _targetId = json['targetId'];
    _keyId = json['keyId'];
    _title = json['title'];
    _remark = json['remark'];
    _values = json['values'];
    _key = json['key'] != null ? Key.fromJson(json['key']) : null;
  }
  num? _id;
  String? _targetType;
  num? _targetId;
  num? _keyId;
  dynamic _title;
  dynamic _remark;
  dynamic _values;
  Key? _key;
  GoodExtAttrItem copyWith({
    num? id,
    String? targetType,
    num? targetId,
    num? keyId,
    dynamic title,
    dynamic remark,
    dynamic values,
    Key? key,
  }) =>
      GoodExtAttrItem(
        id: id ?? _id,
        targetType: targetType ?? _targetType,
        targetId: targetId ?? _targetId,
        keyId: keyId ?? _keyId,
        title: title ?? _title,
        remark: remark ?? _remark,
        values: values ?? _values,
        key: key ?? _key,
      );
  num? get id => _id;
  String? get targetType => _targetType;
  num? get targetId => _targetId;
  num? get keyId => _keyId;
  dynamic get title => _title;
  dynamic get remark => _remark;
  dynamic get values => _values;
  Key? get key => _key;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['targetType'] = _targetType;
    map['targetId'] = _targetId;
    map['keyId'] = _keyId;
    map['title'] = _title;
    map['remark'] = _remark;
    map['values'] = _values;
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
    dynamic remark,
  }) {
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
  Key copyWith({
    num? id,
    dynamic name,
    String? title,
    dynamic remark,
  }) =>
      Key(
        id: id ?? _id,
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
