/// id : 0
/// name : "string"
/// typename : "string"
/// percent : 0
/// cost : 0
/// doorsill : 0
/// endTime : "string"
/// description : "string"
/// plus : true
/// cause : "string"
/// code : "string"

class UserCouponItem {


  UserCouponItem({
    num? id,
    String? name,
    String? startTime,
    String? endTime,
    String? description,
    bool? plus,
    num? cost,
    num? percent,
    num? doorsill,
    String? cause,
    String? code,
    String? typename,
    CouponAct? couponAct,
  }) {
    _id = id;
    _name = name;
    _endTime = endTime;
    _startTime = startTime;
    _description = description;
    _plus = plus;
    _cost = cost;
    _doorsill = doorsill;
    _cause = cause;
    _typename = typename;
    _couponAct = couponAct;
  }

  UserCouponItem.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _startTime = json['startAt'];
    _endTime = json['endTime'];
    _description = json['description'];
    _plus = json['plus'];
    _cost = json['cost'];
    _percent = json['percent'] ?? 0;
    _doorsill = json['doorsill'];
    _cause = json['cause'] ?? '';
    _code = json['code'];
    _typename = json['typename'];
    _couponAct = CouponAct.fromJson(json['couponAct']);
  }

  num? _id;
  String? _name;
  String? _startTime;
  String? _endTime;
  String? _description;
  bool? _plus;
  num? _cost;
  num? _percent;
  num? _doorsill;
  String? _cause;
  String? _code;
  String? _typename;
  CouponAct? _couponAct;

  UserCouponItem copyWith({
    num? id,
    String? name,
    String? startTime,
    String? endTime,
    String? description,
    bool? plus,
    num? cost,
    num? doorsill,
    num? percent,
    String? cause,
    String? code,
    String? typename,
    CouponAct? couponAct,
  }) =>
      UserCouponItem(
          id: id ?? _id,
          name: name ?? _name,
          startTime: startTime ?? _startTime,
          endTime: endTime ?? _endTime,
          description: description ?? _description,
          plus: plus ?? _plus,
          cost: cost ?? _cost,
          doorsill: doorsill ?? _doorsill,
          cause: cause ?? _cause,
          code: code ?? _code,
          percent: percent ?? _percent,
          typename: typename ?? _typename,
          couponAct: couponAct ?? _couponAct);

  num? get id => _id;
  String? get name => _name;
  String? get startTime => _startTime;
  String? get endTime => _endTime;
  String? get description => _description;
  bool? get plus => _plus;
  num? get cost => _cost;
  num? get percent => _percent;
  num? get doorsill => _doorsill;
  String? get cause => _cause;
  String? get code => _code;
  String? get typename => _typename;
  CouponAct? get couponAct => _couponAct;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['startAt'] = _startTime;
    map['endTime'] = _endTime;
    map['description'] = _description;
    map['plus'] = _plus;
    map['cost'] = _cost;
    map['percent'] = _percent;
    map['doorsill'] = _doorsill;
    map['cause'] = _cause;
    map['code'] = _code;
    map['typename'] = _typename;
    map['couponAct'] = _couponAct?.toJson();
    return map;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserCouponItem && runtimeType == other.runtimeType
  && id == other.id;

  @override
  int get hashCode => 0;
}

class CouponAct {
  CouponAct({
    num? id,
    String? name,
    dynamic shopId,
    num? projectId,
    num? sourceId,
    dynamic imgUrl,
    bool? status,
    bool? share,
    CouponRule? rule,
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
    _rule = json['rule'] != null ? CouponRule.fromJson(json['rule']) : null;
    _description = json['description'];
    _quantity = json['quantity'];
    _addTime = json['addTime'];
    _deletedAt = json['deletedAt'];
    if (json['brandCoupon'] != null) {
      _brandCoupon = json['brandCoupon'];
      /* json['brandCoupon'].forEach((v) {
        _brandCoupon?.add(dynamic.fromJson(v));
      });*/
    }
  }
  num? _id;
  String? _name;
  dynamic _shopId;
  num? _projectId;
  num? _sourceId;
  dynamic _imgUrl;
  bool? _status;
  bool? _share;
  CouponRule? _rule;
  String? _description;
  num? _quantity;
  String? _addTime;
  dynamic _deletedAt;
  List<dynamic>? _brandCoupon;
  CouponAct copyWith({
    num? id,
    String? name,
    dynamic shopId,
    num? projectId,
    num? sourceId,
    dynamic imgUrl,
    bool? status,
    bool? share,
    CouponRule? rule,
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
  dynamic get shopId => _shopId;
  num? get projectId => _projectId;
  num? get sourceId => _sourceId;
  dynamic get imgUrl => _imgUrl;
  bool? get status => _status;
  bool? get share => _share;
  CouponRule? get rule => _rule;
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

/// cost : 10
/// endDate : "2023-10-1T00:00:00.000Z"
/// percent : 0
/// doorsill : 0
/// upCoupon : false
/// beginDate : "2023-09-1T00:00:00.000Z"
/// goodsIds : "1,2"

class CouponRule {
  CouponRule({
    num? cost,
    String? endDate,
    num? percent,
    num? doorsill,
    bool? upCoupon,
    String? beginDate,
    String? goodsIds,
  }) {
    _cost = cost;
    _endDate = endDate;
    _percent = percent;
    _doorsill = doorsill;
    _upCoupon = upCoupon;
    _beginDate = beginDate;
    _goodsIds = goodsIds;
  }

  CouponRule.fromJson(dynamic json) {
    _cost = json['cost'];
    _endDate = json['endDate'];
    _percent = json['percent'];
    _doorsill = json['doorsill'];
    _upCoupon = json['upCoupon'];
    _beginDate = json['beginDate'];
    _goodsIds = json['goodsIds'];
  }
  num? _cost;
  String? _endDate;
  num? _percent;
  num? _doorsill;
  bool? _upCoupon;
  String? _beginDate;
  String? _goodsIds;
  CouponRule copyWith({
    num? cost,
    String? endDate,
    num? percent,
    num? doorsill,
    bool? upCoupon,
    String? beginDate,
    String? goodsIds,
  }) =>
      CouponRule(
        cost: cost ?? _cost,
        endDate: endDate ?? _endDate,
        percent: percent ?? _percent,
        doorsill: doorsill ?? _doorsill,
        upCoupon: upCoupon ?? _upCoupon,
        beginDate: beginDate ?? _beginDate,
        goodsIds: goodsIds ?? _goodsIds,
      );
  num? get cost => _cost;
  String? get endDate => _endDate;
  num? get percent => _percent;
  num? get doorsill => _doorsill;
  bool? get upCoupon => _upCoupon;
  String? get beginDate => _beginDate;
  String? get goodsIds => _goodsIds;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cost'] = _cost;
    map['endDate'] = _endDate;
    map['percent'] = _percent;
    map['doorsill'] = _doorsill;
    map['upCoupon'] = _upCoupon;
    map['beginDate'] = _beginDate;
    map['goodsIds'] = _goodsIds;
    return map;
  }
}
