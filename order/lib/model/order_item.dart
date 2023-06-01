/// id : 1
/// createdAt : "2023-05-29T07:39:25.280Z"
/// updatedAt : "2023-05-29T07:39:25.280Z"
/// orderId : "OD1269065511858852"
/// projectId : "d83b6ae7-24b8-4538-a0dc-60e8b293779a"
/// userId : "e73c2a49-6ece-4cea-ad69-8352931ebd8f"
/// shopId : "c637ab27-23f6-4da0-9b1f-5a8e7d04c456"
/// receiverInfo : {"username":"你的名字","mobile":"66666666","sex":0,"mapType":"GOOGLE","place":"花地玛堂区","street":"东望洋街道","detail":"六十二号","lng":"22.1564613","lat":"113.5688292"}
/// amount : 100
/// realAmout : 99
/// orderType : "SHOP"
/// orderStatus : "NOTPAY"
/// cancelReason : "不需要了"
/// remark : "备注"
/// isComment : false
/// branch : {"title":"address"}
/// payAt : "2023-05-29T07:39:25.284Z"
/// finishAt : "2023-05-29T07:39:25.284Z"
/// cancelAt : "2023-05-29T07:39:25.284Z"
/// refundAt : "2023-05-29T07:39:25.284Z"
/// closeAt : "2023-06-13T07:39:25.285Z"
/// orderItems : [{"id":1,"itemId":"482de3d5-e1db-4e0d-831b-30048871d87f","num":2,"totalPrice":10,"itemInfo":{}}]
/// orderSubPrices : [{"id":1,"sn":"117fce19-a7f1-4fc5-a3ef-a53e74e4443a","orderId":"OD6195331768383984","title":"包装费","reason":"干嘛的","adj":400,"releated":"packingCost"}]
/// dispatch : {"orderNo":"OD5460520927526640","status":1,"sendTime":"2023-05-29T07:39:25.286Z","arriveTime":"2023-05-29T07:39:25.286Z","getTime":"2023-05-29T07:39:25.286Z","successTime":"2023-05-29T07:39:25.286Z","riderNo":"2023-05-29T07:39:25.286Z","takeTime":"2023-05-29T07:39:25.286Z"}

class OrderItem {
  OrderItem({
    num? id,
    String? createdAt,
    String? updatedAt,
    String? orderId,
    String? projectId,
    String? userId,
    String? shopId,
    ReceiverInfo? receiverInfo,
    num? amount,
    num? realAmout,
    String? orderType,
    String? orderStatus,
    String? cancelReason,
    String? remark,
    bool? isComment,
    Branch? branch,
    String? payAt,
    String? finishAt,
    String? cancelAt,
    String? refundAt,
    String? closeAt,
    List<OrderItems>? orderItems,
    List<OrderSubPrices>? orderSubPrices,
    Dispatch? dispatch,
  }) {
    _id = id;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _orderId = orderId;
    _projectId = projectId;
    _userId = userId;
    _shopId = shopId;
    _receiverInfo = receiverInfo;
    _amount = amount;
    _realAmout = realAmout;
    _orderType = orderType;
    _orderStatus = orderStatus;
    _cancelReason = cancelReason;
    _remark = remark;
    _isComment = isComment;
    _branch = branch;
    _payAt = payAt;
    _finishAt = finishAt;
    _cancelAt = cancelAt;
    _refundAt = refundAt;
    _closeAt = closeAt;
    _orderItems = orderItems;
    _orderSubPrices = orderSubPrices;
    _dispatch = dispatch;
  }

  OrderItem.fromJson(dynamic json) {
    _id = json['id'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _orderId = json['orderId'];
    _projectId = json['projectId'];
    _userId = json['userId'];
    _shopId = json['shopId'];
    _receiverInfo = json['receiverInfo'] != null
        ? ReceiverInfo.fromJson(json['receiverInfo'])
        : null;
    _amount = json['amount'];
    _realAmout = json['realAmout'];
    _orderType = json['orderType'];
    _orderStatus = json['orderStatus'];
    _cancelReason = json['cancelReason'];
    _remark = json['remark'];
    _isComment = json['isComment'];
    _branch = json['branch'] != null ? Branch.fromJson(json['branch']) : null;
    _payAt = json['payAt'];
    _finishAt = json['finishAt'];
    _cancelAt = json['cancelAt'];
    _refundAt = json['refundAt'];
    _closeAt = json['closeAt'];
    if (json['orderItems'] != null) {
      _orderItems = [];
      json['orderItems'].forEach((v) {
        _orderItems?.add(OrderItems.fromJson(v));
      });
    }
    if (json['orderSubPrices'] != null) {
      _orderSubPrices = [];
      json['orderSubPrices'].forEach((v) {
        _orderSubPrices?.add(OrderSubPrices.fromJson(v));
      });
    }
    _dispatch =
        json['dispatch'] != null ? Dispatch.fromJson(json['dispatch']) : null;
  }
  num? _id;
  String? _createdAt;
  String? _updatedAt;
  String? _orderId;
  String? _projectId;
  String? _userId;
  String? _shopId;
  ReceiverInfo? _receiverInfo;
  num? _amount;
  num? _realAmout;
  String? _orderType;
  String? _orderStatus;
  String? _cancelReason;
  String? _remark;
  bool? _isComment;
  Branch? _branch;
  String? _payAt;
  String? _finishAt;
  String? _cancelAt;
  String? _refundAt;
  String? _closeAt;
  List<OrderItems>? _orderItems;
  List<OrderSubPrices>? _orderSubPrices;
  Dispatch? _dispatch;
  OrderItem copyWith({
    num? id,
    String? createdAt,
    String? updatedAt,
    String? orderId,
    String? projectId,
    String? userId,
    String? shopId,
    ReceiverInfo? receiverInfo,
    num? amount,
    num? realAmout,
    String? orderType,
    String? orderStatus,
    String? cancelReason,
    String? remark,
    bool? isComment,
    Branch? branch,
    String? payAt,
    String? finishAt,
    String? cancelAt,
    String? refundAt,
    String? closeAt,
    List<OrderItems>? orderItems,
    List<OrderSubPrices>? orderSubPrices,
    Dispatch? dispatch,
  }) =>
      OrderItem(
        id: id ?? _id,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        orderId: orderId ?? _orderId,
        projectId: projectId ?? _projectId,
        userId: userId ?? _userId,
        shopId: shopId ?? _shopId,
        receiverInfo: receiverInfo ?? _receiverInfo,
        amount: amount ?? _amount,
        realAmout: realAmout ?? _realAmout,
        orderType: orderType ?? _orderType,
        orderStatus: orderStatus ?? _orderStatus,
        cancelReason: cancelReason ?? _cancelReason,
        remark: remark ?? _remark,
        isComment: isComment ?? _isComment,
        branch: branch ?? _branch,
        payAt: payAt ?? _payAt,
        finishAt: finishAt ?? _finishAt,
        cancelAt: cancelAt ?? _cancelAt,
        refundAt: refundAt ?? _refundAt,
        closeAt: closeAt ?? _closeAt,
        orderItems: orderItems ?? _orderItems,
        orderSubPrices: orderSubPrices ?? _orderSubPrices,
        dispatch: dispatch ?? _dispatch,
      );
  num? get id => _id;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get orderId => _orderId;
  String? get projectId => _projectId;
  String? get userId => _userId;
  String? get shopId => _shopId;
  ReceiverInfo? get receiverInfo => _receiverInfo;
  num? get amount => _amount;
  num? get realAmout => _realAmout;
  String? get orderType => _orderType;
  String? get orderStatus => _orderStatus;
  String? get cancelReason => _cancelReason;
  String? get remark => _remark;
  bool? get isComment => _isComment;
  Branch? get branch => _branch;
  String? get payAt => _payAt;
  String? get finishAt => _finishAt;
  String? get cancelAt => _cancelAt;
  String? get refundAt => _refundAt;
  String? get closeAt => _closeAt;
  List<OrderItems>? get orderItems => _orderItems;
  List<OrderSubPrices>? get orderSubPrices => _orderSubPrices;
  Dispatch? get dispatch => _dispatch;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['orderId'] = _orderId;
    map['projectId'] = _projectId;
    map['userId'] = _userId;
    map['shopId'] = _shopId;
    if (_receiverInfo != null) {
      map['receiverInfo'] = _receiverInfo?.toJson();
    }
    map['amount'] = _amount;
    map['realAmout'] = _realAmout;
    map['orderType'] = _orderType;
    map['orderStatus'] = _orderStatus;
    map['cancelReason'] = _cancelReason;
    map['remark'] = _remark;
    map['isComment'] = _isComment;
    if (_branch != null) {
      map['branch'] = _branch?.toJson();
    }
    map['payAt'] = _payAt;
    map['finishAt'] = _finishAt;
    map['cancelAt'] = _cancelAt;
    map['refundAt'] = _refundAt;
    map['closeAt'] = _closeAt;
    if (_orderItems != null) {
      map['orderItems'] = _orderItems?.map((v) => v.toJson()).toList();
    }
    if (_orderSubPrices != null) {
      map['orderSubPrices'] = _orderSubPrices?.map((v) => v.toJson()).toList();
    }
    if (_dispatch != null) {
      map['dispatch'] = _dispatch?.toJson();
    }
    return map;
  }
}

/// orderNo : "OD5460520927526640"
/// status : 1
/// sendTime : "2023-05-29T07:39:25.286Z"
/// arriveTime : "2023-05-29T07:39:25.286Z"
/// getTime : "2023-05-29T07:39:25.286Z"
/// successTime : "2023-05-29T07:39:25.286Z"
/// riderNo : "2023-05-29T07:39:25.286Z"
/// takeTime : "2023-05-29T07:39:25.286Z"

class Dispatch {
  Dispatch({
    String? orderNo,
    num? status,
    String? sendTime,
    String? arriveTime,
    String? getTime,
    String? successTime,
    String? riderNo,
    String? takeTime,
  }) {
    _orderNo = orderNo;
    _status = status;
    _sendTime = sendTime;
    _arriveTime = arriveTime;
    _getTime = getTime;
    _successTime = successTime;
    _riderNo = riderNo;
    _takeTime = takeTime;
  }

  Dispatch.fromJson(dynamic json) {
    _orderNo = json['orderNo'];
    _status = json['status'];
    _sendTime = json['sendTime'];
    _arriveTime = json['arriveTime'];
    _getTime = json['getTime'];
    _successTime = json['successTime'];
    _riderNo = json['riderNo'];
    _takeTime = json['takeTime'];
  }
  String? _orderNo;
  num? _status;
  String? _sendTime;
  String? _arriveTime;
  String? _getTime;
  String? _successTime;
  String? _riderNo;
  String? _takeTime;
  Dispatch copyWith({
    String? orderNo,
    num? status,
    String? sendTime,
    String? arriveTime,
    String? getTime,
    String? successTime,
    String? riderNo,
    String? takeTime,
  }) =>
      Dispatch(
        orderNo: orderNo ?? _orderNo,
        status: status ?? _status,
        sendTime: sendTime ?? _sendTime,
        arriveTime: arriveTime ?? _arriveTime,
        getTime: getTime ?? _getTime,
        successTime: successTime ?? _successTime,
        riderNo: riderNo ?? _riderNo,
        takeTime: takeTime ?? _takeTime,
      );
  String? get orderNo => _orderNo;
  num? get status => _status;
  String? get sendTime => _sendTime;
  String? get arriveTime => _arriveTime;
  String? get getTime => _getTime;
  String? get successTime => _successTime;
  String? get riderNo => _riderNo;
  String? get takeTime => _takeTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['orderNo'] = _orderNo;
    map['status'] = _status;
    map['sendTime'] = _sendTime;
    map['arriveTime'] = _arriveTime;
    map['getTime'] = _getTime;
    map['successTime'] = _successTime;
    map['riderNo'] = _riderNo;
    map['takeTime'] = _takeTime;
    return map;
  }
}

/// id : 1
/// sn : "117fce19-a7f1-4fc5-a3ef-a53e74e4443a"
/// orderId : "OD6195331768383984"
/// title : "包装费"
/// reason : "干嘛的"
/// adj : 400
/// releated : "packingCost"

class OrderSubPrices {
  OrderSubPrices({
    num? id,
    String? sn,
    String? orderId,
    String? title,
    String? reason,
    num? adj,
    String? releated,
  }) {
    _id = id;
    _sn = sn;
    _orderId = orderId;
    _title = title;
    _reason = reason;
    _adj = adj;
    _releated = releated;
  }

  OrderSubPrices.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _orderId = json['orderId'];
    _title = json['title'];
    _reason = json['reason'];
    _adj = json['adj'];
    _releated = json['releated'];
  }
  num? _id;
  String? _sn;
  String? _orderId;
  String? _title;
  String? _reason;
  num? _adj;
  String? _releated;
  OrderSubPrices copyWith({
    num? id,
    String? sn,
    String? orderId,
    String? title,
    String? reason,
    num? adj,
    String? releated,
  }) =>
      OrderSubPrices(
        id: id ?? _id,
        sn: sn ?? _sn,
        orderId: orderId ?? _orderId,
        title: title ?? _title,
        reason: reason ?? _reason,
        adj: adj ?? _adj,
        releated: releated ?? _releated,
      );
  num? get id => _id;
  String? get sn => _sn;
  String? get orderId => _orderId;
  String? get title => _title;
  String? get reason => _reason;
  num? get adj => _adj;
  String? get releated => _releated;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sn'] = _sn;
    map['orderId'] = _orderId;
    map['title'] = _title;
    map['reason'] = _reason;
    map['adj'] = _adj;
    map['releated'] = _releated;
    return map;
  }
}

/// id : 1
/// itemId : "482de3d5-e1db-4e0d-831b-30048871d87f"
/// num : 2
/// totalPrice : 10
/// itemInfo : {}

class OrderItems {
  OrderItems({
    num? id,
    String? itemId,
    num? number,
    num? totalPrice,
    dynamic itemInfo,
  }) {
    _id = id;
    _itemId = itemId;
    _number = number;
    _totalPrice = totalPrice;
    _itemInfo = itemInfo;
  }

  OrderItems.fromJson(dynamic json) {
    _id = json['id'];
    _itemId = json['itemId'];
    _number = json['num'];
    _totalPrice = json['totalPrice'];
    _itemInfo = json['itemInfo'];
  }
  num? _id;
  String? _itemId;
  num? _number;
  num? _totalPrice;
  dynamic _itemInfo;
  OrderItems copyWith({
    num? id,
    String? itemId,
    num? number,
    num? totalPrice,
    dynamic itemInfo,
  }) =>
      OrderItems(
        id: id ?? _id,
        itemId: itemId ?? _itemId,
        number: number ?? _number,
        totalPrice: totalPrice ?? _totalPrice,
        itemInfo: itemInfo ?? _itemInfo,
      );
  num? get id => _id;
  String? get itemId => _itemId;
  num? get number => _number;
  num? get totalPrice => _totalPrice;
  dynamic get itemInfo => _itemInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['itemId'] = _itemId;
    map['num'] = _number;
    map['totalPrice'] = _totalPrice;
    map['itemInfo'] = _itemInfo;
    return map;
  }
}

/// title : "address"

class Branch {
  Branch({
    String? title,
  }) {
    _title = title;
  }

  Branch.fromJson(dynamic json) {
    _title = json['title'];
  }
  String? _title;
  Branch copyWith({
    String? title,
  }) =>
      Branch(
        title: title ?? _title,
      );
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    return map;
  }
}

/// username : "你的名字"
/// mobile : "66666666"
/// sex : 0
/// mapType : "GOOGLE"
/// place : "花地玛堂区"
/// street : "东望洋街道"
/// detail : "六十二号"
/// lng : "22.1564613"
/// lat : "113.5688292"

class ReceiverInfo {
  ReceiverInfo({
    String? username,
    String? mobile,
    num? sex,
    String? mapType,
    String? place,
    String? street,
    String? detail,
    String? lng,
    String? lat,
  }) {
    _username = username;
    _mobile = mobile;
    _sex = sex;
    _mapType = mapType;
    _place = place;
    _street = street;
    _detail = detail;
    _lng = lng;
    _lat = lat;
  }

  ReceiverInfo.fromJson(dynamic json) {
    _username = json['username'];
    _mobile = json['mobile'];
    _sex = json['sex'];
    _mapType = json['mapType'];
    _place = json['place'];
    _street = json['street'];
    _detail = json['detail'];
    _lng = json['lng'];
    _lat = json['lat'];
  }
  String? _username;
  String? _mobile;
  num? _sex;
  String? _mapType;
  String? _place;
  String? _street;
  String? _detail;
  String? _lng;
  String? _lat;
  ReceiverInfo copyWith({
    String? username,
    String? mobile,
    num? sex,
    String? mapType,
    String? place,
    String? street,
    String? detail,
    String? lng,
    String? lat,
  }) =>
      ReceiverInfo(
        username: username ?? _username,
        mobile: mobile ?? _mobile,
        sex: sex ?? _sex,
        mapType: mapType ?? _mapType,
        place: place ?? _place,
        street: street ?? _street,
        detail: detail ?? _detail,
        lng: lng ?? _lng,
        lat: lat ?? _lat,
      );
  String? get username => _username;
  String? get mobile => _mobile;
  num? get sex => _sex;
  String? get mapType => _mapType;
  String? get place => _place;
  String? get street => _street;
  String? get detail => _detail;
  String? get lng => _lng;
  String? get lat => _lat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['mobile'] = _mobile;
    map['sex'] = _sex;
    map['mapType'] = _mapType;
    map['place'] = _place;
    map['street'] = _street;
    map['detail'] = _detail;
    map['lng'] = _lng;
    map['lat'] = _lat;
    return map;
  }
}
