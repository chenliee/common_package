/// id : 14
/// name : "string"
/// endTime : "2023-05-19 14:01-2023-06-06 08:00"
/// description : "string"
/// plus : true
/// cost : 20
/// doorsill : 0

class CouponItem {
  CouponItem({
    num? id,
    String? name,
    String? shopId,
    String? img,
    String? goodsIds,
    String? cost,
    String? percent,
    String? doorsill,
    String? endTime,
    String? typename,
    String? hint,
    bool? receive,
    bool? isVip,
    String? description,
  }) {
    _id = id;
    _name = name;
    _shopId = shopId;
    _img = img;
    _goodsIds = goodsIds;
    _cost = cost;
    _percent = percent;
    _doorsill = doorsill;
    _endTime = endTime;
    _typename = typename;
    _hint = hint;
    _receive = receive;
    _isVip = isVip;
    _description = description;
  }

  CouponItem.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _shopId = json['shopId'];
    _img = json['img'];
    _goodsIds = json['goodsIds'];
    _cost = json['cost']?.toString() ?? '0';
    _doorsill = json['doorsill']?.toString() ?? '0';
    _percent = json['percent']?.toString() ?? "0";
    _endTime = json['endTime'];
    _typename = json['typename'];
    _hint = json['hint'];
    _receive = json['receive'];
    _isVip = json['isVip'];
    _description = json['description'];
  }
  num? _id;
  String? _name;
  String? _shopId;
  String? _img;
  String? _goodsIds;
  String? _cost;
  String? _percent;
  String? _doorsill;
  String? _endTime;
  String? _typename;
  String? _hint;
  bool? _receive;
  bool? _isVip;
  String? _description;
  CouponItem copyWith(
          {num? id,
          String? name,
          String? shopId,
          String? img,
          String? goodsIds,
          String? cost,
          String? percent,
          String? doorsill,
          String? endTime,
          String? typename,
          String? hint,
          bool? receive,
          bool? isVip,
          String? description}) =>
      CouponItem(
          id: id ?? _id,
          name: name ?? _name,
          shopId: shopId ?? _shopId,
          img: img ?? _img,
          goodsIds: goodsIds ?? _goodsIds,
          cost: cost ?? _cost,
          percent: percent ?? _percent,
          doorsill: doorsill ?? _doorsill,
          endTime: endTime ?? _endTime,
          typename: typename ?? _typename,
          hint: hint ?? _hint,
          receive: receive ?? _receive,
          isVip: isVip ?? _isVip,
          description: description ?? _description);
  num? get id => _id;
  String? get name => _name;
  String? get shopId => _shopId;
  String? get img => _img;
  String? get goodsIds => _goodsIds;
  String? get cost => _cost;
  String? get percent => _percent;
  String? get doorsill => _doorsill;
  String? get endTime => _endTime;
  String? get typename => _typename;
  String? get hint => _hint;
  bool? get receive => _receive;
  bool? get isVip => _isVip;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['shopId'] = _shopId;
    map['img'] = _img;
    map['goodsIds'] = _goodsIds;
    map['cost'] = _cost;
    map['percent'] = _percent;
    map['doorsill'] = _doorsill;
    map['endTime'] = _endTime;
    map['typename'] = _typename;
    map['hint'] = _hint;
    map['receive'] = _receive;
    map['isVip'] = _isVip;
    map['description'] = _description;
    return map;
  }
}

/// id : 26
/// name : "9月"
/// shopId : null
/// projectId : 1
/// sourceId : 1
/// imgUrl : null
/// status : true
/// share : false
/// rule : {"cost":10,"endDate":"2023-10-1T00:00:00.000Z","percent":0,"doorsill":0,"upCoupon":false,"beginDate":"2023-09-1T00:00:00.000Z","goodsIds":"1,2"}
/// description : "string"
/// quantity : 97
/// addTime : "2023-07-18T08:23:00.918Z"
/// deletedAt : null
/// brandCoupon : []
