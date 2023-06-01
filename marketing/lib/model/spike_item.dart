/// id : 2
/// goodsId : "1"
/// imgUrl : "https://img0.baidu.com/it/u=3725332334,1095153558&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667"
/// nativePrice : 600
/// nowPrice : 588
/// limit : 99
/// count : 999
/// sold : 0
/// seckillTime : {"open":63000,"end":64800}

class SpikeItem {
  SpikeItem({
    num? id,
    String? goodsId,
    String? imgUrl,
    num? nativePrice,
    num? nowPrice,
    num? limit,
    num? count,
    num? sold,
    SeckillTime? seckillTime,
  }) {
    _id = id;
    _goodsId = goodsId;
    _imgUrl = imgUrl;
    _nativePrice = nativePrice;
    _nowPrice = nowPrice;
    _limit = limit;
    _count = count;
    _sold = sold;
    _seckillTime = seckillTime;
  }

  SpikeItem.fromJson(dynamic json) {
    _id = json['id'];
    _goodsId = json['goodsId'];
    _imgUrl = json['imgUrl'];
    _nativePrice = json['nativePrice'];
    _nowPrice = json['nowPrice'];
    _limit = json['limit'];
    _count = json['count'];
    _sold = json['sold'];
    _seckillTime = json['seckillTime'] != null
        ? SeckillTime.fromJson(json['seckillTime'])
        : null;
  }
  num? _id;
  String? _goodsId;
  String? _imgUrl;
  num? _nativePrice;
  num? _nowPrice;
  num? _limit;
  num? _count;
  num? _sold;
  SeckillTime? _seckillTime;
  SpikeItem copyWith({
    num? id,
    String? goodsId,
    String? imgUrl,
    num? nativePrice,
    num? nowPrice,
    num? limit,
    num? count,
    num? sold,
    SeckillTime? seckillTime,
  }) =>
      SpikeItem(
        id: id ?? _id,
        goodsId: goodsId ?? _goodsId,
        imgUrl: imgUrl ?? _imgUrl,
        nativePrice: nativePrice ?? _nativePrice,
        nowPrice: nowPrice ?? _nowPrice,
        limit: limit ?? _limit,
        count: count ?? _count,
        sold: sold ?? _sold,
        seckillTime: seckillTime ?? _seckillTime,
      );
  num? get id => _id;
  String? get goodsId => _goodsId;
  String? get imgUrl => _imgUrl;
  num? get nativePrice => _nativePrice;
  num? get nowPrice => _nowPrice;
  num? get limit => _limit;
  num? get count => _count;
  num? get sold => _sold;
  SeckillTime? get seckillTime => _seckillTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['goodsId'] = _goodsId;
    map['imgUrl'] = _imgUrl;
    map['nativePrice'] = _nativePrice;
    map['nowPrice'] = _nowPrice;
    map['limit'] = _limit;
    map['count'] = _count;
    map['sold'] = _sold;
    if (_seckillTime != null) {
      map['seckillTime'] = _seckillTime?.toJson();
    }
    return map;
  }
}

/// open : 63000
/// end : 64800

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
