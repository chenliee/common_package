/// id : 145
/// targetType : "good"
/// targetId : 1
/// key : "sellPrice"
/// title : "销售价格"
/// desc : null
/// value : 3000

class GoodCustomAttrItem {
  GoodCustomAttrItem({
    num? id,
    String? targetType,
    num? targetId,
    String? key,
    String? title,
    dynamic desc,
    num? value,
  }) {
    _id = id;
    _targetType = targetType;
    _targetId = targetId;
    _key = key;
    _title = title;
    _desc = desc;
    _value = value;
  }

  GoodCustomAttrItem.fromJson(dynamic json) {
    _id = json['id'];
    _targetType = json['targetType'];
    _targetId = json['targetId'];
    _key = json['key'];
    _title = json['title'];
    _desc = json['desc'];
    _value = json['value'];
  }
  num? _id;
  String? _targetType;
  num? _targetId;
  String? _key;
  String? _title;
  dynamic _desc;
  num? _value;
  GoodCustomAttrItem copyWith({
    num? id,
    String? targetType,
    num? targetId,
    String? key,
    String? title,
    dynamic desc,
    num? value,
  }) =>
      GoodCustomAttrItem(
        id: id ?? _id,
        targetType: targetType ?? _targetType,
        targetId: targetId ?? _targetId,
        key: key ?? _key,
        title: title ?? _title,
        desc: desc ?? _desc,
        value: value ?? _value,
      );
  num? get id => _id;
  String? get targetType => _targetType;
  num? get targetId => _targetId;
  String? get key => _key;
  String? get title => _title;
  dynamic get desc => _desc;
  num? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['targetType'] = _targetType;
    map['targetId'] = _targetId;
    map['key'] = _key;
    map['title'] = _title;
    map['desc'] = _desc;
    map['value'] = _value;
    return map;
  }
}
