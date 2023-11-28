/// id : 4
/// merchantId : 2
/// name : "300送10"
/// imgUrl : null
/// price : 6
/// value : 31000
/// deletedAt : null
/// createdAt : "2023-07-27T06:26:28.416Z"
/// updatedAt : "2023-07-31T08:48:31.853Z"
/// gift : []

class RechargeItem {
  RechargeItem({
    num? id,
    num? merchantId,
    String? name,
    dynamic imgUrl,
    num? price,
    num? value,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    List<dynamic>? gift,
  }) {
    _id = id;
    _merchantId = merchantId;
    _name = name;
    _imgUrl = imgUrl;
    _price = price;
    _value = value;
    _deletedAt = deletedAt;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _gift = gift;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RechargeItem &&
          runtimeType == other.runtimeType &&
          _id == other._id;

  @override
  int get hashCode => _id.hashCode;

  RechargeItem.fromJson(dynamic json) {
    _id = json['id'];
    _merchantId = json['merchantId'];
    _name = json['name'];
    _imgUrl = json['imgUrl'];
    _price = json['price'];
    _value = json['value'];
    _deletedAt = json['deletedAt'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    if (json['gift'] != null) {
      _gift = json['gift'];
    }
  }
  num? _id;
  num? _merchantId;
  String? _name;
  dynamic _imgUrl;
  num? _price;
  num? _value;
  dynamic _deletedAt;
  String? _createdAt;
  String? _updatedAt;
  List<dynamic>? _gift;
  RechargeItem copyWith({
    num? id,
    num? merchantId,
    String? name,
    dynamic imgUrl,
    num? price,
    num? value,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    List<dynamic>? gift,
  }) =>
      RechargeItem(
        id: id ?? _id,
        merchantId: merchantId ?? _merchantId,
        name: name ?? _name,
        imgUrl: imgUrl ?? _imgUrl,
        price: price ?? _price,
        value: value ?? _value,
        deletedAt: deletedAt ?? _deletedAt,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        gift: gift ?? _gift,
      );
  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get name => _name;
  dynamic get imgUrl => _imgUrl;
  num? get price => _price;
  num? get value => _value;
  dynamic get deletedAt => _deletedAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  List<dynamic>? get gift => _gift;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['merchantId'] = _merchantId;
    map['name'] = _name;
    map['imgUrl'] = _imgUrl;
    map['price'] = _price;
    map['value'] = _value;
    map['deletedAt'] = _deletedAt;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_gift != null) {
      map['gift'] = _gift?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
