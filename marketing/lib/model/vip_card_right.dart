/// right : [{"couponId":0,"num":1,"name":"string","content":"string"}]
/// rightPlus : [{"couponId":0,"num":1,"name":"string","content":"string","price":0,"limit":0}]
/// doubleScore : 0

class VipCardRight {
  VipCardRight({
    List<Right>? right,
    List<RightPlus>? rightPlus,
    num? doubleScore, //每單積分多少倍
  }) {
    _right = right;
    _rightPlus = rightPlus;
    _doubleScore = doubleScore;
  }

  VipCardRight.fromJson(dynamic json) {
    if (json['right'] != null) {
      _right = [];
      json['right'].forEach((v) {
        _right?.add(Right.fromJson(v));
      });
    }
    if (json['rightPlus'] != null) {
      _rightPlus = [];
      json['rightPlus'].forEach((v) {
        _rightPlus?.add(RightPlus.fromJson(v));
      });
    }
    _doubleScore = json['doubleScore'];
  }

  List<Right>? _right;
  List<RightPlus>? _rightPlus;
  num? _doubleScore;

  VipCardRight copyWith({
    List<Right>? right,
    List<RightPlus>? rightPlus,
    num? doubleScore,
  }) =>
      VipCardRight(
        right: right ?? _right,
        rightPlus: rightPlus ?? _rightPlus,
        doubleScore: doubleScore ?? _doubleScore,
      );

  List<Right>? get right => _right;
  List<RightPlus>? get rightPlus => _rightPlus;
  num? get doubleScore => _doubleScore;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_right != null) {
      map['right'] = _right?.map((v) => v.toJson()).toList();
    }
    if (_rightPlus != null) {
      map['rightPlus'] = _rightPlus?.map((v) => v.toJson()).toList();
    }
    map['doubleScore'] = _doubleScore;
    return map;
  }
}

class RightPlus {
  RightPlus({
    num? couponId,
    num? number,
    String? name,
    String? content,
    num? price,
    num? limit,
  }) {
    _couponId = couponId;
    _number = number;
    _name = name;
    _content = content;
    _price = price;
    _limit = limit;
  }

  RightPlus.fromJson(dynamic json) {
    _couponId = json['couponId'];
    _number = json['num'];
    _name = json['name'];
    _content = json['content'];
    _price = json['price'];
    _limit = json['limit'];
  }
  num? _couponId;
  num? _number;
  String? _name;
  String? _content;
  num? _price;
  num? _limit;

  RightPlus copyWith({
    num? couponId,
    num? number,
    String? name,
    String? content,
    num? price,
    num? limit,
  }) =>
      RightPlus(
        couponId: couponId ?? _couponId,
        number: number ?? _number,
        name: name ?? _name,
        content: content ?? _content,
        price: price ?? _price,
        limit: limit ?? _limit,
      );

  num? get couponId => _couponId;
  num? get number => _number;
  String? get name => _name;
  String? get content => _content;
  num? get price => _price;
  num? get limit => _limit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['couponId'] = _couponId;
    map['num'] = _number;
    map['name'] = _name;
    map['content'] = _content;
    map['price'] = _price;
    map['limit'] = _limit;
    return map;
  }
}

class Right {
  Right({
    num? couponId,
    num? number,
    String? name,
    String? content,
  }) {
    _couponId = couponId;
    _number = number;
    _name = name;
    _content = content;
  }

  Right.fromJson(dynamic json) {
    _couponId = json['couponId'];
    _number = json['num'];
    _name = json['name'];
    _content = json['content'];
  }

  num? _couponId;
  num? _number;
  String? _name;
  String? _content;

  Right copyWith({
    num? couponId,
    num? number,
    String? name,
    String? content,
  }) =>
      Right(
        couponId: couponId ?? _couponId,
        number: number ?? _number,
        name: name ?? _name,
        content: content ?? _content,
      );

  num? get couponId => _couponId;
  num? get number => _number;
  String? get name => _name;
  String? get content => _content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['couponId'] = _couponId;
    map['num'] = _number;
    map['name'] = _name;
    map['content'] = _content;
    return map;
  }
}
