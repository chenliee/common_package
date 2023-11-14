/// id : 1
/// shopId : "heyday-dagu"
/// adInfo : {"link":"string","cover":"87","title":"招牌蜜汁鸡","goods":[{"id":"14","num":2,"extAttr":["1","2"]}]}

class PositionItem {
  PositionItem({
    num? id,
    String? shopId,
    AdInfo? adInfo,
  }) {
    _id = id;
    _shopId = shopId;
    _adInfo = adInfo;
  }

  PositionItem.fromJson(dynamic json) {
    _id = json['id'];
    _shopId = json['shopId'];
    _adInfo = json['adInfo'] != null ? AdInfo.fromJson(json['adInfo']) : null;
  }
  num? _id;
  String? _shopId;
  AdInfo? _adInfo;
  PositionItem copyWith({
    num? id,
    String? shopId,
    AdInfo? adInfo,
  }) =>
      PositionItem(
        id: id ?? _id,
        shopId: shopId ?? _shopId,
        adInfo: adInfo ?? _adInfo,
      );
  num? get id => _id;
  String? get shopId => _shopId;
  AdInfo? get adInfo => _adInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['shopId'] = _shopId;
    if (_adInfo != null) {
      map['adInfo'] = _adInfo?.toJson();
    }
    return map;
  }
}

/// link : "string"
/// cover : "87"
/// title : "招牌蜜汁鸡"
/// goods : [{"id":"14","num":2,"extAttr":["1","2"]}]

class AdInfo {
  AdInfo({
    String? link,
    String? cover,
    String? title,
    List<Goods>? goods,
  }) {
    _link = link;
    _cover = cover;
    _title = title;
    _goods = goods;
  }

  AdInfo.fromJson(dynamic json) {
    _link = json['link'];
    _cover = json['cover'];
    _title = json['title'];
    if (json['goods'] != null) {
      _goods = [];
      json['goods'].forEach((v) {
        _goods?.add(Goods.fromJson(v));
      });
    }
  }
  String? _link;
  String? _cover;
  String? _title;
  List<Goods>? _goods;
  AdInfo copyWith({
    String? link,
    String? cover,
    String? title,
    List<Goods>? goods,
  }) =>
      AdInfo(
        link: link ?? _link,
        cover: cover ?? _cover,
        title: title ?? _title,
        goods: goods ?? _goods,
      );
  String? get link => _link;
  String? get cover => _cover;
  String? get title => _title;
  List<Goods>? get goods => _goods;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['link'] = _link;
    map['cover'] = _cover;
    map['title'] = _title;
    if (_goods != null) {
      map['goods'] = _goods?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : "14"
/// num : 2
/// extAttr : ["1","2"]

class Goods {
  Goods({
    String? id,
    num? number,
    List<String>? extAttr,
  }) {
    _id = id;
    _number = number;
    _extAttr = extAttr;
  }

  Goods.fromJson(dynamic json) {
    _id = json['id'];
    _number = json['num'];
    _extAttr = json['extAttr'] != null ? json['extAttr'].cast<String>() : [];
  }
  String? _id;
  num? _number;
  List<String>? _extAttr;
  Goods copyWith({
    String? id,
    num? number,
    List<String>? extAttr,
  }) =>
      Goods(
        id: id ?? _id,
        number: number ?? _number,
        extAttr: extAttr ?? _extAttr,
      );
  String? get id => _id;
  num? get number => _number;
  List<String>? get extAttr => _extAttr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['num'] = _number;
    map['extAttr'] = _extAttr;
    return map;
  }
}
