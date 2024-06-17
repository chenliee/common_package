import 'dart:convert';
/// homeAdvert : [{"id":119338,"bid":292482,"shopId":"1","adInfo":{"link":"/special_good/zonesnack","cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/8f91f35e4b87ee9e4b77c4cfb4afa23c059abb7993cf2753cfd495545bafe618_home1.png"}},{"id":119339,"bid":292483,"shopId":"2","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/41ebb7355bba8c652c452b9e02eeb3ed2a37869da1a34147408f16eb12c99f31_home2.png"}},{"id":119340,"bid":292484,"shopId":"3","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/180ce42f18c79716233b8f1ccbdff26a8cef78fa61e8bc1b85e4efed0005802c_home3.png"}}]
/// homeCenterAdvert : []
/// homeBottomAdvert : []
/// homeModalAdvert : []

GoodyHomeModel goodyHomeModelFromJson(String str) => GoodyHomeModel.fromJson(json.decode(str));
String goodyHomeModelToJson(GoodyHomeModel data) => json.encode(data.toJson());
class GoodyHomeModel {
  GoodyHomeModel({
      List<PositionItem>? homeAdvert,
      List<PositionItem>? homeCenterAdvert,
      List<PositionItem>? homeBottomAdvert,
      List<PositionItem>? homeModalAdvert,}){
    _homeAdvert = homeAdvert;
    _homeCenterAdvert = homeCenterAdvert;
    _homeBottomAdvert = homeBottomAdvert;
    _homeModalAdvert = homeModalAdvert;
}

  GoodyHomeModel.fromJson(dynamic json) {
    if (json['homeAdvert'] != null) {
      _homeAdvert = [];
      json['homeAdvert'].forEach((v) {
        _homeAdvert?.add(PositionItem.fromJson(v));
      });
    }
    if (json['homeCenterAdvert'] != null) {
      _homeCenterAdvert = [];
      json['homeCenterAdvert'].forEach((v) {
        _homeCenterAdvert?.add(PositionItem.fromJson(v));
      });
    }
    if (json['homeBottomAdvert'] != null) {
      _homeBottomAdvert = [];
      json['homeBottomAdvert'].forEach((v) {
        _homeBottomAdvert?.add(PositionItem.fromJson(v));
      });
    }
    if (json['homeModalAdvert'] != null) {
      _homeModalAdvert = [];
      json['homeModalAdvert'].forEach((v) {
        _homeModalAdvert?.add(PositionItem.fromJson(v));
      });
    }
  }
  List<PositionItem>? _homeAdvert;
  List<PositionItem>? _homeCenterAdvert;
  List<PositionItem>? _homeBottomAdvert;
  List<PositionItem>? _homeModalAdvert;

  List<PositionItem>? get homeAdvert => _homeAdvert;
  List<PositionItem>? get homeCenterAdvert => _homeCenterAdvert;
  List<PositionItem>? get homeBottomAdvert => _homeBottomAdvert;
  List<PositionItem>? get homeModalAdvert => _homeModalAdvert;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_homeAdvert != null) {
      map['homeAdvert'] = _homeAdvert?.map((v) => v.toJson()).toList();
    }
    if (_homeCenterAdvert != null) {
      map['homeCenterAdvert'] = _homeCenterAdvert?.map((v) => v.toJson()).toList();
    }
    if (_homeBottomAdvert != null) {
      map['homeBottomAdvert'] = _homeBottomAdvert?.map((v) => v.toJson()).toList();
    }
    if (_homeModalAdvert != null) {
      map['homeModalAdvert'] = _homeModalAdvert?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

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

