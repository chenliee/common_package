import 'dart:convert';

class VipCard {
  VipCard({
    num? id,
    String? createAt,
    String? updateAt,
    String? vipCardId,
    num? projectId,
    String? cardType,
    String? privileges,
    List<PriceList>? priceList,
    String? description,
    String? guideTitle,
    String? coupon,
    String? coverImg,
    num? isDisable,
    num? isDefault,
    num? isDelete,
  }) {
    _id = id;
    _createAt = createAt;
    _updateAt = updateAt;
    _vipCardId = vipCardId;
    _projectId = projectId;
    _cardType = cardType;
    _privileges = privileges;
    _priceList = priceList;
    _description = description;
    _guideTitle = guideTitle;
    _coupon = coupon;
    _coverImg = coverImg;
    _isDisable = isDisable;
    _isDefault = isDefault;
    _isDelete = isDelete;
  }

  VipCard.fromJson(dynamic json) {
    _id = json['id'];
    _createAt = json['createAt'];
    _updateAt = json['updateAt'];
    _vipCardId = json['vipCardId'];
    _projectId = json['projectId'];
    _cardType = json['cardType'];
    _privileges = json['privileges'];
    if (json['priceList'] != null) {
      List list = jsonDecode(json['jsonList']);
      _priceList = [];
      for (var v in list) {
        _priceList?.add(PriceList.fromJson(v));
      }
    }
    _description = json['description'];
    _guideTitle = json['guideTitle'];
    _coupon = json['coupon'];
    _coverImg = json['coverImg'];
    _isDisable = json['isDisable'];
    _isDefault = json['isDefault'];
    _isDelete = json['isDelete'];
  }

  num? _id;
  String? _createAt;
  String? _updateAt;
  String? _vipCardId;
  num? _projectId;
  String? _cardType;
  String? _privileges;
  List<PriceList>? _priceList;
  String? _description;
  String? _guideTitle;
  String? _coupon;
  String? _coverImg;
  num? _isDisable;
  num? _isDefault;
  num? _isDelete;
  VipCard copyWith({
    num? id,
    String? createAt,
    String? updateAt,
    String? vipCardId,
    num? projectId,
    String? cardType,
    String? privileges,
    List<PriceList>? priceList,
    String? description,
    String? guideTitle,
    String? coupon,
    String? coverImg,
    num? isDisable,
    num? isDefault,
    num? isDelete,
  }) =>
      VipCard(
        id: id ?? _id,
        createAt: createAt ?? _createAt,
        updateAt: updateAt ?? _updateAt,
        vipCardId: vipCardId ?? _vipCardId,
        projectId: projectId ?? _projectId,
        cardType: cardType ?? _cardType,
        privileges: privileges ?? _privileges,
        priceList: priceList ?? _priceList,
        description: description ?? _description,
        guideTitle: guideTitle ?? _guideTitle,
        coupon: coupon ?? _coupon,
        coverImg: coverImg ?? _coverImg,
        isDisable: isDisable ?? _isDisable,
        isDefault: isDefault ?? _isDefault,
        isDelete: isDelete ?? _isDelete,
      );
  num? get id => _id;
  String? get createAt => _createAt;
  String? get updateAt => _updateAt;
  String? get vipCardId => _vipCardId;
  num? get projectId => _projectId;
  String? get cardType => _cardType;
  String? get privileges => _privileges;
  List<PriceList>? get priceList => _priceList;
  String? get description => _description;
  String? get guideTitle => _guideTitle;
  String? get coupon => _coupon;
  String? get coverImg => _coverImg;
  num? get isDisable => _isDisable;
  num? get isDefault => _isDefault;
  num? get isDelete => _isDelete;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['createAt'] = _createAt;
    map['updateAt'] = _updateAt;
    map['vipCardId'] = _vipCardId;
    map['projectId'] = _projectId;
    map['cardType'] = _cardType;
    map['privileges'] = _privileges;
    if (_priceList != null) {
      map['priceList'] = _priceList?.map((v) => v.toJson()).toList();
    }
    map['description'] = _description;
    map['guideTitle'] = _guideTitle;
    map['coupon'] = _coupon;
    map['coverImg'] = _coverImg;
    map['isDisable'] = _isDisable;
    map['isDefault'] = _isDefault;
    map['isDelete'] = _isDelete;
    return map;
  }
}

class PriceList {
  PriceList({
    String? name,
    String? price,
    String? day,
  }) {
    _name = name;
    _price = price;
    _day = day;
  }

  PriceList.fromJson(dynamic json) {
    _name = json['name'];
    _price = json['price'];
    _day = json['day'];
  }
  String? _name;
  String? _price;
  String? _day;
  PriceList copyWith({
    String? name,
    String? price,
    String? day,
  }) =>
      PriceList(
        name: name ?? _name,
        price: price ?? _price,
        day: day ?? _day,
      );
  String? get name => _name;
  String? get price => _price;
  String? get day => _day;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['price'] = _price;
    map['day'] = _day;
    return map;
  }
}
