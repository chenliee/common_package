import 'dart:convert';

import '../marketing.dart';

/// id : 84
/// goodsId : "238505737886347931"
/// nativePrice : 770
/// nowPrice : 100
/// limit : 4
/// count : 99
/// sold : 0
/// goodsName : "金車-柏克金(三月啤酒)"
/// seckillTime : {"open":43200,"end":50400}
/// shopId : "heyday-B01-yp"
/// imgUrl : "https://storage.dev.heyday-catering.com:20443/saas-marketing/public/3c357236a9b3d38ce0fe4a84d5373e18910b69195d37b6a86517e06f4e9d799c_banner.png"

GoodsItem spikeItemFromJson(String str) => GoodsItem.fromJson(json.decode(str));
String spikeItemToJson(GoodsItem data) => json.encode(data.toJson());

class GoodsItem {
  GoodsItem({
    num? id,
    String? goodsId,
    num? nativePrice,
    num? nowPrice,
    num? limit,
    num? userLimit,
    num? count,
    num? sold,
    String? goodsName,
    SeckillTime? seckillTime,
    String? shopId,
    String? imgUrl,
    Merchant? merchant,
  }) {
    _id = id;
    _goodsId = goodsId;
    _nativePrice = nativePrice;
    _nowPrice = nowPrice;
    _limit = limit;
    _userLimit = userLimit;
    _count = count;
    _sold = sold;
    _goodsName = goodsName;
    _seckillTime = seckillTime;
    _shopId = shopId;
    _imgUrl = imgUrl;
    _merchant = merchant;
  }

  GoodsItem.fromJson(dynamic json) {
    _id = json['id'];
    _goodsId = json['goodsId'];
    _nativePrice = json['nativePrice'];
    _nowPrice = json['nowPrice'];
    _limit = json['limit'];
    _userLimit = json['userLimit'];
    _count = json['count'];
    _sold = json['sold'];
    _goodsName = json['goodsName'];
    _seckillTime = json['seckillTime'] != null
        ? SeckillTime.fromJson(json['seckillTime'])
        : null;
    _shopId = json['shopId'];
    _imgUrl = json['imgUrl'];
    _merchant =
        json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
  }
  num? _id;
  String? _goodsId;
  num? _nativePrice;
  num? _nowPrice;
  num? _limit;
  num? _userLimit;
  num? _count;
  num? _sold;
  String? _goodsName;
  SeckillTime? _seckillTime;
  String? _shopId;
  String? _imgUrl;
  Merchant? _merchant;

  Merchant? get merchant => _merchant;
  GoodsItem copyWith({
    num? id,
    String? goodsId,
    num? nativePrice,
    num? nowPrice,
    num? limit,
    num? userLimit,
    num? count,
    num? sold,
    String? goodsName,
    SeckillTime? seckillTime,
    String? shopId,
    String? imgUrl,
    Merchant? merchant,
  }) =>
      GoodsItem(
        id: id ?? _id,
        goodsId: goodsId ?? _goodsId,
        nativePrice: nativePrice ?? _nativePrice,
        nowPrice: nowPrice ?? _nowPrice,
        limit: limit ?? _limit,
        userLimit: userLimit ?? _userLimit,
        count: count ?? _count,
        sold: sold ?? _sold,
        goodsName: goodsName ?? _goodsName,
        seckillTime: seckillTime ?? _seckillTime,
        shopId: shopId ?? _shopId,
        imgUrl: imgUrl ?? _imgUrl,
        merchant: merchant ?? _merchant,
      );
  num? get id => _id;
  String? get goodsId => _goodsId;
  num? get nativePrice => _nativePrice;
  num? get nowPrice => _nowPrice;
  num? get limit => _limit;
  num? get userLimit => _userLimit;
  num? get count => _count;
  num? get sold => _sold;
  String? get goodsName => _goodsName;
  SeckillTime? get seckillTime => _seckillTime;
  String? get shopId => _shopId;
  String? get imgUrl => _imgUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['goodsId'] = _goodsId;
    map['nativePrice'] = _nativePrice;
    map['nowPrice'] = _nowPrice;
    map['limit'] = _limit;
    map['userLimit'] = _userLimit;
    map['count'] = _count;
    map['sold'] = _sold;
    map['goodsName'] = _goodsName;
    if (_seckillTime != null) {
      map['seckillTime'] = _seckillTime?.toJson();
    }
    map['shopId'] = _shopId;
    map['imgUrl'] = _imgUrl;
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    return map;
  }
}

/// open : 43200
/// end : 50400

SeckillTime seckillTimeFromJson(String str) =>
    SeckillTime.fromJson(json.decode(str));
String seckillTimeToJson(SeckillTime data) => json.encode(data.toJson());

class SeckillTime {
  SeckillTime({
    num? open,
    num? end,
  }) {
    _open = open;
    _end = end;
  }

  SeckillTime.fromJson(dynamic json) {
    _open = json['open'];
    _end = json['end'];
  }
  num? _open;
  num? _end;
  SeckillTime copyWith({
    num? open,
    num? end,
  }) =>
      SeckillTime(
        open: open ?? _open,
        end: end ?? _end,
      );
  num? get open => _open;
  num? get end => _end;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['open'] = _open;
    map['end'] = _end;
    return map;
  }
}
