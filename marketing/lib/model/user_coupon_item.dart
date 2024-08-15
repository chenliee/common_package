/// id : 1075
/// code : "40ce78de-4bc4-4be8-b12e-8e7a2f6be1b2"
/// uid : "231100200248"
/// cardId : 27
/// startAt : "2023-11-01T09:22:03.661Z"
/// addTime : "2023-11-01T09:22:03.662Z"
/// endTime : "2023-11-01 17:22-2023-11-08 17:22"
/// status : 2
/// relShopId : null
/// relGoodId : null
/// relOrderId : null
/// useTime : null
/// imgUrl : {}
/// closeAt : "2023-11-08 17:22"
/// name : "滿90減20(7天)"
/// typename : "滿減券"
/// description : "使用條件：訂單金額滿90可用；\n使用規格：\n1. 本券有效期為領券后7天內有效；\n2.此優惠券為一次性使用商品，不可兌換現金、不找零、不開發票；\n3. 本券不得與其他優惠券、促銷活動、贈券、電子券、銀行積分和各類卡券等同時使用；\n4. 在有效期當天結束前均可使用；\n5. 此券可在盛世品牌門店堂食/點單小程序-外賣/點單小程序-自取下單時使用；"
/// plus : false
/// couponAct : {"id":27,"name":"滿90減20(7天)","shopId":"0","projectId":2,"sourceId":1,"imgUrl":null,"status":true,"share":false,"rule":{"cost":20,"endDate":"","doorsill":"90","getLimit":99,"goodsIds":"","upCoupon":false,"validDay":7,"beginDate":""},"description":"使用條件：訂單金額滿90可用；\n使用規格：\n1. 本券有效期為領券后7天內有效；\n2.此優惠券為一次性使用商品，不可兌換現金、不找零、不開發票；\n3. 本券不得與其他優惠券、促銷活動、贈券、電子券、銀行積分和各類卡券等同時使用；\n4. 在有效期當天結束前均可使用；\n5. 此券可在盛世品牌門店堂食/點單小程序-外賣/點單小程序-自取下單時使用；","quantity":88,"addTime":"2023-07-31T09:08:24.907Z","deletedAt":null,"brandCoupon":[]}
/// cost : 20
/// doorsill : "90"
/// cause : "已過期"

class UserCouponItem {
  UserCouponItem({
    num? id,
    String? code,
    String? uid,
    num? cardId,
    String? startAt,
    String? addTime,
    String? endTime,
    num? status,
    dynamic relShopId,
    dynamic relGoodId,
    dynamic relOrderId,
    dynamic useTime,
    dynamic imgUrl,
    String? closeAt,
    String? name,
    String? typename,
    String? description,
    bool? plus,
    CouponAct? couponAct,
    String? cost,
    String? doorsill,
    String? percent,
    String? cause,
  }) {
    _id = id;
    _code = code;
    _uid = uid;
    _cardId = cardId;
    _startAt = startAt;
    _addTime = addTime;
    _endTime = endTime;
    _status = status;
    _relShopId = relShopId;
    _relGoodId = relGoodId;
    _relOrderId = relOrderId;
    _useTime = useTime;
    _imgUrl = imgUrl;
    _closeAt = closeAt;
    _name = name;
    _typename = typename;
    _description = description;
    _plus = plus;
    _couponAct = couponAct;
    _cost = cost;
    _doorsill = doorsill;
    _percent = percent;
    _cause = cause;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserCouponItem &&
          runtimeType == other.runtimeType &&
          _id == other._id &&
          _uid == other._uid;

  @override
  int get hashCode => _id.hashCode ^ _uid.hashCode;

  UserCouponItem.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _uid = json['uid'];
    _cardId = json['cardId'];
    _startAt = json['startAt'];
    _addTime = json['addTime'];
    _endTime = json['endTime'];
    _status = json['status'];
    _relShopId = json['relShopId'];
    _relGoodId = json['relGoodId'];
    _relOrderId = json['relOrderId'];
    _useTime = json['useTime'];
    _imgUrl = json['imgUrl'];
    _closeAt = json['closeAt'];
    _name = json['name'];
    _typename = json['typename'];
    _description = json['description'];
    _plus = json['plus'];
    _couponAct = json['couponAct'] != null
        ? CouponAct.fromJson(json['couponAct'])
        : null;
    _cost = json['cost']?.toString() ?? '0';
    _doorsill = json['doorsill']?.toString() ?? '0';
    _percent = json['percent']?.toString() ?? "0";
    _cause = json['cause'];
  }
  num? _id;
  String? _code;
  String? _uid;
  num? _cardId;
  String? _startAt;
  String? _addTime;
  String? _endTime;
  num? _status;
  dynamic _relShopId;
  dynamic _relGoodId;
  dynamic _relOrderId;
  dynamic _useTime;
  dynamic _imgUrl;
  String? _closeAt;
  String? _name;
  String? _typename;
  String? _description;
  bool? _plus;
  CouponAct? _couponAct;
  String? _cost;
  String? _doorsill;
  String? _percent;
  String? _cause;
  UserCouponItem copyWith({
    num? id,
    String? code,
    String? uid,
    num? cardId,
    String? startAt,
    String? addTime,
    String? endTime,
    num? status,
    dynamic relShopId,
    dynamic relGoodId,
    dynamic relOrderId,
    dynamic useTime,
    dynamic imgUrl,
    String? closeAt,
    String? name,
    String? typename,
    String? description,
    bool? plus,
    CouponAct? couponAct,
    String? cost,
    String? doorsill,
    String? percent,
    String? cause,
  }) =>
      UserCouponItem(
        id: id ?? _id,
        code: code ?? _code,
        uid: uid ?? _uid,
        cardId: cardId ?? _cardId,
        startAt: startAt ?? _startAt,
        addTime: addTime ?? _addTime,
        endTime: endTime ?? _endTime,
        status: status ?? _status,
        relShopId: relShopId ?? _relShopId,
        relGoodId: relGoodId ?? _relGoodId,
        relOrderId: relOrderId ?? _relOrderId,
        useTime: useTime ?? _useTime,
        imgUrl: imgUrl ?? _imgUrl,
        closeAt: closeAt ?? _closeAt,
        name: name ?? _name,
        typename: typename ?? _typename,
        description: description ?? _description,
        plus: plus ?? _plus,
        couponAct: couponAct ?? _couponAct,
        cost: cost ?? _cost,
        doorsill: doorsill ?? _doorsill,
        percent: percent ?? _percent,
        cause: cause ?? _cause,
      );
  num? get id => _id;
  String? get code => _code;
  String? get uid => _uid;
  num? get cardId => _cardId;
  String? get startAt => _startAt;
  String? get addTime => _addTime;
  String? get endTime => _endTime;
  num? get status => _status;
  dynamic get relShopId => _relShopId;
  dynamic get relGoodId => _relGoodId;
  dynamic get relOrderId => _relOrderId;
  dynamic get useTime => _useTime;
  dynamic get imgUrl => _imgUrl;
  String? get closeAt => _closeAt;
  String? get name => _name;
  String? get typename => _typename;
  String? get description => _description;
  bool? get plus => _plus;
  CouponAct? get couponAct => _couponAct;
  String? get cost => _cost;
  String? get doorsill => _doorsill;
  String? get percent => _percent;
  String? get cause => _cause;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['uid'] = _uid;
    map['cardId'] = _cardId;
    map['startAt'] = _startAt;
    map['addTime'] = _addTime;
    map['endTime'] = _endTime;
    map['status'] = _status;
    map['relShopId'] = _relShopId;
    map['relGoodId'] = _relGoodId;
    map['relOrderId'] = _relOrderId;
    map['useTime'] = _useTime;
    map['imgUrl'] = _imgUrl;
    map['closeAt'] = _closeAt;
    map['name'] = _name;
    map['typename'] = _typename;
    map['description'] = _description;
    map['plus'] = _plus;
    if (_couponAct != null) {
      map['couponAct'] = _couponAct?.toJson();
    }
    map['cost'] = _cost;
    map['doorsill'] = _doorsill;
    map['percent'] = _percent;
    map['cause'] = _cause;
    return map;
  }
}

/// id : 27
/// name : "滿90減20(7天)"
/// shopId : "0"
/// projectId : 2
/// sourceId : 1
/// imgUrl : null
/// status : true
/// share : false
/// rule : {"cost":20,"endDate":"","doorsill":"90","getLimit":99,"goodsIds":"","upCoupon":false,"validDay":7,"beginDate":""}
/// description : "使用條件：訂單金額滿90可用；\n使用規格：\n1. 本券有效期為領券后7天內有效；\n2.此優惠券為一次性使用商品，不可兌換現金、不找零、不開發票；\n3. 本券不得與其他優惠券、促銷活動、贈券、電子券、銀行積分和各類卡券等同時使用；\n4. 在有效期當天結束前均可使用；\n5. 此券可在盛世品牌門店堂食/點單小程序-外賣/點單小程序-自取下單時使用；"
/// quantity : 88
/// addTime : "2023-07-31T09:08:24.907Z"
/// deletedAt : null
/// brandCoupon : []

class CouponAct {
  CouponAct({
    num? id,
    String? name,
    String? shopId,
    num? projectId,
    num? sourceId,
    dynamic imgUrl,
    bool? status,
    bool? share,
    Rule? rule,
    String? description,
    num? quantity,
    String? addTime,
    dynamic deletedAt,
    List<dynamic>? brandCoupon,
  }) {
    _id = id;
    _name = name;
    _shopId = shopId;
    _projectId = projectId;
    _sourceId = sourceId;
    _imgUrl = imgUrl;
    _status = status;
    _share = share;
    _rule = rule;
    _description = description;
    _quantity = quantity;
    _addTime = addTime;
    _deletedAt = deletedAt;
    _brandCoupon = brandCoupon;
  }

  CouponAct.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _shopId = json['shopId'];
    _projectId = json['projectId'];
    _sourceId = json['sourceId'];
    _imgUrl = json['imgUrl'];
    _status = json['status'];
    _share = json['share'];
    _rule = json['rule'] != null ? Rule.fromJson(json['rule']) : null;
    _description = json['description'];
    _quantity = json['quantity'];
    _addTime = json['addTime'];
    _deletedAt = json['deletedAt'];
    if (json['brandCoupon'] != null) {
      _brandCoupon = json['brandCoupon'];
/*      json['brandCoupon'].forEach((v) {
        _brandCoupon?.add(Dynamic.fromJson(v));
      });*/
    }
  }
  num? _id;
  String? _name;
  String? _shopId;
  num? _projectId;
  num? _sourceId;
  dynamic _imgUrl;
  bool? _status;
  bool? _share;
  Rule? _rule;
  String? _description;
  num? _quantity;
  String? _addTime;
  dynamic _deletedAt;
  List<dynamic>? _brandCoupon;
  CouponAct copyWith({
    num? id,
    String? name,
    String? shopId,
    num? projectId,
    num? sourceId,
    dynamic imgUrl,
    bool? status,
    bool? share,
    Rule? rule,
    String? description,
    num? quantity,
    String? addTime,
    dynamic deletedAt,
    List<dynamic>? brandCoupon,
  }) =>
      CouponAct(
        id: id ?? _id,
        name: name ?? _name,
        shopId: shopId ?? _shopId,
        projectId: projectId ?? _projectId,
        sourceId: sourceId ?? _sourceId,
        imgUrl: imgUrl ?? _imgUrl,
        status: status ?? _status,
        share: share ?? _share,
        rule: rule ?? _rule,
        description: description ?? _description,
        quantity: quantity ?? _quantity,
        addTime: addTime ?? _addTime,
        deletedAt: deletedAt ?? _deletedAt,
        brandCoupon: brandCoupon ?? _brandCoupon,
      );
  num? get id => _id;
  String? get name => _name;
  String? get shopId => _shopId;
  num? get projectId => _projectId;
  num? get sourceId => _sourceId;
  dynamic get imgUrl => _imgUrl;
  bool? get status => _status;
  bool? get share => _share;
  Rule? get rule => _rule;
  String? get description => _description;
  num? get quantity => _quantity;
  String? get addTime => _addTime;
  dynamic get deletedAt => _deletedAt;
  List<dynamic>? get brandCoupon => _brandCoupon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['shopId'] = _shopId;
    map['projectId'] = _projectId;
    map['sourceId'] = _sourceId;
    map['imgUrl'] = _imgUrl;
    map['status'] = _status;
    map['share'] = _share;
    if (_rule != null) {
      map['rule'] = _rule?.toJson();
    }
    map['description'] = _description;
    map['quantity'] = _quantity;
    map['addTime'] = _addTime;
    map['deletedAt'] = _deletedAt;
    if (_brandCoupon != null) {
      map['brandCoupon'] = _brandCoupon?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// cost : 20
/// endDate : ""
/// doorsill : "90"
/// getLimit : 99
/// goodsIds : ""
/// upCoupon : false
/// validDay : 7
/// beginDate : ""

class Rule {
  Rule({
    String? cost,
    String? endDate,
    String? percent,
    String? doorsill,
    bool? upCoupon,
    String? beginDate,
    String? goodsIds,
    List<String>? shopIds,
    Map<String, dynamic>? extra,
  }) {
    _cost = cost;
    _endDate = endDate;
    _percent = percent;
    _doorsill = doorsill;
    _upCoupon = upCoupon;
    _beginDate = beginDate;
    _goodsIds = goodsIds;
    _shopIds = shopIds;
    _extra = extra;
  }

  Rule.fromJson(dynamic json) {
    _cost = json['cost'].toString();
    _endDate = json['endDate'];
    _percent = json['percent']?.toString() ?? '0';
    _doorsill = json['doorsill']?.toString() ?? '0';
    _upCoupon = json['upCoupon'];
    _beginDate = json['beginDate'];
    _goodsIds = json['goodsIds'];
    _shopIds = json['shopIds'] != null ? json['shopIds'].cast<String>() : [];
    _extra = json['extra'];
  }
  String? _cost;
  String? _endDate;
  String? _percent;
  String? _doorsill;
  bool? _upCoupon;
  String? _beginDate;
  String? _goodsIds;
  List<String>? _shopIds;
  Map<String, dynamic>? _extra;

  Rule copyWith(
          {String? cost,
          String? endDate,
          String? percent,
          String? doorsill,
          bool? upCoupon,
          String? beginDate,
          String? goodsIds,
          List<String>? shopIds,
          Map<String, dynamic>? extra}) =>
      Rule(
        cost: cost ?? _cost,
        endDate: endDate ?? _endDate,
        percent: percent ?? _percent,
        doorsill: doorsill ?? _doorsill,
        upCoupon: upCoupon ?? _upCoupon,
        beginDate: beginDate ?? _beginDate,
        goodsIds: goodsIds ?? _goodsIds,
        shopIds: shopIds ?? _shopIds,
        extra: extra ?? _extra,
      );
  String? get cost => _cost;
  String? get endDate => _endDate;
  String? get percent => _percent;
  String? get doorsill => _doorsill;
  bool? get upCoupon => _upCoupon;
  String? get beginDate => _beginDate;
  String? get goodsIds => _goodsIds;
  List<String>? get shopIds => _shopIds;
  Map<String, dynamic>? get extra => _extra;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cost'] = _cost;
    map['endDate'] = _endDate;
    map['percent'] = _percent;
    map['doorsill'] = _doorsill;
    map['upCoupon'] = _upCoupon;
    map['beginDate'] = _beginDate;
    map['goodsIds'] = _goodsIds;
    map['extra'] = _extra;
    return map;
  }
}
