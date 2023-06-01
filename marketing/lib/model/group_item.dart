/// name : "string"
/// shopId : "string"
/// limit : 0
/// goodsId : "string"
/// goodsDetId : "string"
/// imgUrl : "string"
/// nativePrice : 0
/// nowPrice : 0
/// count : 1
/// cancelDate : 0
/// creatTime : "2023-05-22T00:00:00.000Z"
/// closeTime : "2023-05-23T00:00:00.000Z"
/// desc : "string"
/// id : 0
/// part : 0

class GroupItem {
  GroupItem({
    String? name,
    String? shopId,
    num? limit,
    String? goodsId,
    String? goodsDetId,
    String? imgUrl,
    num? nativePrice,
    num? nowPrice,
    num? count,
    num? cancelDate,
    String? creatTime,
    String? closeTime,
    String? desc,
    num? id,
    num? part,
  }) {
    _name = name;
    _shopId = shopId;
    _limit = limit;
    _goodsId = goodsId;
    _goodsDetId = goodsDetId;
    _imgUrl = imgUrl;
    _nativePrice = nativePrice;
    _nowPrice = nowPrice;
    _count = count;
    _cancelDate = cancelDate;
    _creatTime = creatTime;
    _closeTime = closeTime;
    _desc = desc;
    _id = id;
    _part = part;
  }

  GroupItem.fromJson(dynamic json) {
    _name = json['name'];
    _shopId = json['shopId'];
    _limit = json['limit'];
    _goodsId = json['goodsId'];
    _goodsDetId = json['goodsDetId'];
    _imgUrl = json['imgUrl'];
    _nativePrice = json['nativePrice'];
    _nowPrice = json['nowPrice'];
    _count = json['count'];
    _cancelDate = json['cancelDate'];
    _creatTime = json['creatTime'];
    _closeTime = json['closeTime'];
    _desc = json['desc'];
    _id = json['id'];
    _part = json['part'];
  }
  String? _name;
  String? _shopId;
  num? _limit;
  String? _goodsId;
  String? _goodsDetId;
  String? _imgUrl;
  num? _nativePrice;
  num? _nowPrice;
  num? _count;
  num? _cancelDate;
  String? _creatTime;
  String? _closeTime;
  String? _desc;
  num? _id;
  num? _part;

  GroupItem copyWith({
    String? name,
    String? shopId,
    num? limit,
    String? goodsId,
    String? goodsDetId,
    String? imgUrl,
    num? nativePrice,
    num? nowPrice,
    num? count,
    num? cancelDate,
    String? creatTime,
    String? closeTime,
    String? desc,
    num? id,
    num? part,
  }) =>
      GroupItem(
        name: name ?? _name,
        shopId: shopId ?? _shopId,
        limit: limit ?? _limit,
        goodsId: goodsId ?? _goodsId,
        goodsDetId: goodsDetId ?? _goodsDetId,
        imgUrl: imgUrl ?? _imgUrl,
        nativePrice: nativePrice ?? _nativePrice,
        nowPrice: nowPrice ?? _nowPrice,
        count: count ?? _count,
        cancelDate: cancelDate ?? _cancelDate,
        creatTime: creatTime ?? _creatTime,
        closeTime: closeTime ?? _closeTime,
        desc: desc ?? _desc,
        id: id ?? _id,
        part: part ?? _part,
      );

  String? get name => _name;
  String? get shopId => _shopId;
  num? get limit => _limit;
  String? get goodsId => _goodsId;
  String? get goodsDetId => _goodsDetId;
  String? get imgUrl => _imgUrl;
  num? get nativePrice => _nativePrice;
  num? get nowPrice => _nowPrice;
  num? get count => _count;
  num? get cancelDate => _cancelDate;
  String? get creatTime => _creatTime;
  String? get closeTime => _closeTime;
  String? get desc => _desc;
  num? get id => _id;
  num? get part => _part;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['shopId'] = _shopId;
    map['limit'] = _limit;
    map['goodsId'] = _goodsId;
    map['goodsDetId'] = _goodsDetId;
    map['imgUrl'] = _imgUrl;
    map['nativePrice'] = _nativePrice;
    map['nowPrice'] = _nowPrice;
    map['count'] = _count;
    map['cancelDate'] = _cancelDate;
    map['creatTime'] = _creatTime;
    map['closeTime'] = _closeTime;
    map['desc'] = _desc;
    map['id'] = _id;
    map['part'] = _part;
    return map;
  }
}
