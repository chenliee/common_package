/// id : 21
/// uid : "fe2075f9-a157-42db-9a45-62a7083da223"
/// scoring : 5000
/// merchantId : 2
/// updateTime : "2023-06-18 14:32:23"
/// merchant : {"title":"盛世餐飲"}
/// couponNum : 29

class Statistical {
  Statistical({
    num? id,
    String? uid,
    num? scoring,
    num? merchantId,
    String? updateTime,
    Merchant? merchant,
    num? couponNum,
  }) {
    _id = id;
    _uid = uid;
    _scoring = scoring;
    _merchantId = merchantId;
    _updateTime = updateTime;
    _merchant = merchant;
    _couponNum = couponNum;
  }

  Statistical.fromJson(dynamic json) {
    _id = json['id'];
    _uid = json['uid'];
    _scoring = json['scoring'];
    _merchantId = json['merchantId'];
    _updateTime = json['updateTime'];
    _merchant =
        json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
    _couponNum = json['couponNum'];
  }

  num? _id;
  String? _uid;
  num? _scoring;
  num? _merchantId;
  String? _updateTime;
  Merchant? _merchant;
  num? _couponNum;

  Statistical copyWith({
    num? id,
    String? uid,
    num? scoring,
    num? merchantId,
    String? updateTime,
    Merchant? merchant,
    num? couponNum,
  }) =>
      Statistical(
        id: id ?? _id,
        uid: uid ?? _uid,
        scoring: scoring ?? _scoring,
        merchantId: merchantId ?? _merchantId,
        updateTime: updateTime ?? _updateTime,
        merchant: merchant ?? _merchant,
        couponNum: couponNum ?? _couponNum,
      );

  num? get id => _id;
  String? get uid => _uid;
  num? get scoring => _scoring;
  num? get merchantId => _merchantId;
  String? get updateTime => _updateTime;
  Merchant? get merchant => _merchant;
  num? get couponNum => _couponNum;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['uid'] = _uid;
    map['scoring'] = _scoring;
    map['merchantId'] = _merchantId;
    map['updateTime'] = _updateTime;
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    map['couponNum'] = _couponNum;
    return map;
  }
}

class Merchant {
  Merchant({
    String? title,
  }) {
    _title = title;
  }

  Merchant.fromJson(dynamic json) {
    _title = json['title'];
  }
  String? _title;

  Merchant copyWith({
    String? title,
  }) =>
      Merchant(
        title: title ?? _title,
      );

  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    return map;
  }
}
