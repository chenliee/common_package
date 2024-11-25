/// id : 451
/// orderId : "OD13692022351979128"
/// projectId : 2
/// userId : "230900200148"
/// shopId : "heyday-B01-reese"
/// receiverInfo : {"mobile":"66666666"}
/// amount : 8900
/// realAmout : 8900
/// takeCode : null
/// orderType : "SHOP"
/// orderStatus : "NOTPAY"
/// cancelReason : null
/// remark : "111"
/// isComment : false
/// branch : {"shopId":"heyday-B01-reese","shopAddress":"商家地址"}
/// createdAt : "2023-12-02T08:40:43.644Z"
/// updatedAt : "2023-12-02T08:40:43.644Z"
/// payAt : null
/// autoFinishAt : null
/// finishAt : null
/// autoCancelAt : "2023-12-02T08:55:43.641Z"
/// cancelAt : null
/// refundAt : null
/// closeAt : null
/// extra : "default"
/// project : {"id":2,"code":"heyday","merchantId":2,"title":"盛世餐飲收單系統","createdAt":"2023-08-25T13:41:16.628Z","updatedAt":"2023-08-25T13:41:16.628Z","merchant":{"id":2,"code":"heyday","title":"盛世餐飲","createdAt":"2023-08-25T13:41:15.994Z","updatedAt":"2023-08-25T13:41:15.994Z"}}
/// orderItems : [{"id":549,"mid":"heyday","itemId":"911719642215396305","orderId":451,"num":2,"totalPrice":5600,"unitPrice":2800,"itemInfo":{"uid":"911719642215396305","name":"美式咖啡（中杯）","size":"1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538","cover":{"url":"https://storage.heyday-catering.com/saas-servicehub/public/4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282_2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","hash":"4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282","mime":"image/jpeg","name":"2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","size":"325329"},"links":{"pospal":"911719642215396305"},"price":2800,"_cover":"cover","_price":"price","instock":true,"_instock":"instock"},"title":"美式咖啡（中杯）","size":"1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538","service":"saas-servicehub","condition":{"place":"B01"},"priceKey":"sell_price"},{"id":550,"mid":"heyday","itemId":"608987524999737694","orderId":451,"num":1,"totalPrice":3300,"unitPrice":3300,"itemInfo":{"uid":"608987524999737694","name":"美式咖啡（大杯）","size":"1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538","cover":{"url":"https://storage.heyday-catering.com/saas-servicehub/public/4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282_2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","hash":"4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282","mime":"image/jpeg","name":"2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","size":"325329"},"links":{"pospal":"608987524999737694"},"price":3300,"_cover":"cover","_price":"price","instock":true,"_instock":"instock"},"title":"美式咖啡（大杯）","size":"1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538","service":"saas-servicehub","condition":{"place":"B01"},"priceKey":"sell_price"}]
/// orderSubPrices : [{"id":759,"sn":"packingCost","title":"包裝費","orderId":451,"adj":0,"reason":"包裝費","releated":"packingCost","service":"saas-order-hub"}]

class OrderItem {
  OrderItem({
    num? id,
    String? orderId,
    num? projectId,
    num? merchantId,
    String? userId,
    String? shopId,
    ReceiverInfo? receiverInfo,
    num? amount,
    num? realAmout,
    dynamic takeCode,
    String? orderType,
    String? orderStatus,
    dynamic cancelReason,
    String? remark,
    bool? isComment,
    Branch? branch,
    String? createdAt,
    String? updatedAt,
    dynamic payAt,
    dynamic autoFinishAt,
    dynamic finishAt,
    String? autoCancelAt,
    dynamic cancelAt,
    dynamic refundAt,
    dynamic closeAt,
    String? extra,
    Project? project,
    Merchant? merchant,
    List<OrderItems>? orderItems,
    List<OrderSubPrices>? orderSubPrices,
    List<OrderStatusChange>? orderStatusChange,
    List<dynamic>? link,
  }) {
    _id = id;
    _orderId = orderId;
    _projectId = projectId;
    _userId = userId;
    _shopId = shopId;
    _receiverInfo = receiverInfo;
    _amount = amount;
    _realAmout = realAmout;
    _takeCode = takeCode;
    _orderType = orderType;
    _orderStatus = orderStatus;
    _cancelReason = cancelReason;
    _remark = remark;
    _isComment = isComment;
    _branch = branch;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _payAt = payAt;
    _autoFinishAt = autoFinishAt;
    _finishAt = finishAt;
    _autoCancelAt = autoCancelAt;
    _cancelAt = cancelAt;
    _refundAt = refundAt;
    _closeAt = closeAt;
    _extra = extra;
    _project = project;
    _merchant = merchant;
    _merchantId = merchantId;
    _orderItems = orderItems;
    _orderSubPrices = orderSubPrices;
    _orderStatusChange = orderStatusChange;
    _link = link;
  }

  OrderItem.fromJson(dynamic json) {
    _id = json['id'];
    _orderId = json['orderId'];
    _projectId = json['projectId'];
    _merchantId = json['merchantId'];
    _userId = json['userId'];
    _shopId = json['shopId'];
    _receiverInfo = json['receiverInfo'] != null
        ? ReceiverInfo.fromJson(json['receiverInfo'])
        : null;
    _amount = json['amount'];
    _realAmout = json['realAmout'];
    _takeCode = json['takeCode'];
    _orderType = json['orderType'];
    _orderStatus = json['orderStatus'];
    _cancelReason = json['cancelReason'];
    _remark = json['remark'];
    _isComment = json['isComment'];
    _branch = json['branch'] != null ? Branch.fromJson(json['branch']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _payAt = json['payAt'];
    _autoFinishAt = json['autoFinishAt'];
    _finishAt = json['finishAt'];
    _autoCancelAt = json['autoCancelAt'];
    _cancelAt = json['cancelAt'];
    _refundAt = json['refundAt'];
    _closeAt = json['closeAt'];
    _extra = json['extra'];
    _project =
        json['project'] != null ? Project.fromJson(json['project']) : null;
    _merchant =
        json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
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
    if (json['orderStatusChange'] != null) {
      _orderStatusChange = [];
      json['orderStatusChange'].forEach((v) {
        _orderStatusChange?.add(OrderStatusChange.fromJson(v));
      });
    }
    _link = json['link'];
  }
  num? _id;
  String? _orderId;
  num? _projectId;
  String? _userId;
  String? _shopId;
  ReceiverInfo? _receiverInfo;
  num? _amount;
  num? _realAmout;
  dynamic _takeCode;
  String? _orderType;
  String? _orderStatus;
  dynamic _cancelReason;
  String? _remark;
  bool? _isComment;
  Branch? _branch;
  String? _createdAt;
  String? _updatedAt;
  dynamic _payAt;
  dynamic _autoFinishAt;
  dynamic _finishAt;
  String? _autoCancelAt;
  dynamic _cancelAt;
  dynamic _refundAt;
  dynamic _closeAt;
  String? _extra;
  Project? _project;
  Merchant? _merchant;
  num? _merchantId;
  List<OrderItems>? _orderItems;
  List<OrderSubPrices>? _orderSubPrices;
  List<OrderStatusChange>? _orderStatusChange;
  List<dynamic>? _link;
  OrderItem copyWith(
          {num? id,
          String? orderId,
          num? projectId,
          String? userId,
          String? shopId,
          ReceiverInfo? receiverInfo,
          num? amount,
          num? realAmout,
          dynamic takeCode,
          String? orderType,
          String? orderStatus,
          dynamic cancelReason,
          String? remark,
          bool? isComment,
          Branch? branch,
          String? createdAt,
          String? updatedAt,
          dynamic payAt,
          dynamic autoFinishAt,
          dynamic finishAt,
          String? autoCancelAt,
          dynamic cancelAt,
          dynamic refundAt,
          dynamic closeAt,
          String? extra,
          Project? project,
          Merchant? merchant,
          num? merchantId,
          List<OrderItems>? orderItems,
          List<OrderSubPrices>? orderSubPrices,
          List<OrderStatusChange>? orderStatusChange,
          List<Map<String, dynamic>>? link}) =>
      OrderItem(
          id: id ?? _id,
          orderId: orderId ?? _orderId,
          projectId: projectId ?? _projectId,
          userId: userId ?? _userId,
          shopId: shopId ?? _shopId,
          receiverInfo: receiverInfo ?? _receiverInfo,
          amount: amount ?? _amount,
          realAmout: realAmout ?? _realAmout,
          takeCode: takeCode ?? _takeCode,
          orderType: orderType ?? _orderType,
          orderStatus: orderStatus ?? _orderStatus,
          cancelReason: cancelReason ?? _cancelReason,
          remark: remark ?? _remark,
          isComment: isComment ?? _isComment,
          branch: branch ?? _branch,
          createdAt: createdAt ?? _createdAt,
          updatedAt: updatedAt ?? _updatedAt,
          payAt: payAt ?? _payAt,
          autoFinishAt: autoFinishAt ?? _autoFinishAt,
          finishAt: finishAt ?? _finishAt,
          autoCancelAt: autoCancelAt ?? _autoCancelAt,
          cancelAt: cancelAt ?? _cancelAt,
          refundAt: refundAt ?? _refundAt,
          closeAt: closeAt ?? _closeAt,
          extra: extra ?? _extra,
          project: project ?? _project,
          merchant: merchant ?? _merchant,
          merchantId: merchantId ?? _merchantId,
          orderItems: orderItems ?? _orderItems,
          orderSubPrices: orderSubPrices ?? _orderSubPrices,
          orderStatusChange: orderStatusChange ?? _orderStatusChange,
          link: link ?? _link);
  num? get id => _id;
  String? get orderId => _orderId;
  num? get projectId => _projectId;
  String? get userId => _userId;
  String? get shopId => _shopId;
  ReceiverInfo? get receiverInfo => _receiverInfo;
  num? get amount => _amount;
  num? get realAmout => _realAmout;
  dynamic get takeCode => _takeCode;
  String? get orderType => _orderType;
  String? get orderStatus => _orderStatus;
  dynamic get cancelReason => _cancelReason;
  String? get remark => _remark;
  bool? get isComment => _isComment;
  Branch? get branch => _branch;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get payAt => _payAt;
  dynamic get autoFinishAt => _autoFinishAt;
  dynamic get finishAt => _finishAt;
  String? get autoCancelAt => _autoCancelAt;
  dynamic get cancelAt => _cancelAt;
  dynamic get refundAt => _refundAt;
  dynamic get closeAt => _closeAt;
  String? get extra => _extra;
  Project? get project => _project;
  Merchant? get merchant => _merchant;
  num? get merchantId => _merchantId;
  List<OrderItems>? get orderItems => _orderItems;
  List<OrderSubPrices>? get orderSubPrices => _orderSubPrices;
  List<OrderStatusChange>? get orderStatusChange => _orderStatusChange;
  List<dynamic>? get link => _link;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['orderId'] = _orderId;
    map['projectId'] = _projectId;
    map['userId'] = _userId;
    map['shopId'] = _shopId;
    if (_receiverInfo != null) {
      map['receiverInfo'] = _receiverInfo?.toJson();
    }
    map['amount'] = _amount;
    map['realAmout'] = _realAmout;
    map['takeCode'] = _takeCode;
    map['orderType'] = _orderType;
    map['orderStatus'] = _orderStatus;
    map['cancelReason'] = _cancelReason;
    map['remark'] = _remark;
    map['isComment'] = _isComment;
    if (_branch != null) {
      map['branch'] = _branch?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['payAt'] = _payAt;
    map['autoFinishAt'] = _autoFinishAt;
    map['finishAt'] = _finishAt;
    map['autoCancelAt'] = _autoCancelAt;
    map['cancelAt'] = _cancelAt;
    map['refundAt'] = _refundAt;
    map['closeAt'] = _closeAt;
    map['extra'] = _extra;
    if (_project != null) {
      map['project'] = _project?.toJson();
    }
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    map['merchantId'] = _merchantId;
    if (_orderItems != null) {
      map['orderItems'] = _orderItems?.map((v) => v.toJson()).toList();
    }
    if (_orderSubPrices != null) {
      map['orderSubPrices'] = _orderSubPrices?.map((v) => v.toJson()).toList();
    }
    map['link'] = _link;
    return map;
  }
}

/// id : 759
/// sn : "packingCost"
/// title : "包裝費"
/// orderId : 451
/// adj : 0
/// reason : "包裝費"
/// releated : "packingCost"
/// service : "saas-order-hub"

class OrderSubPrices {
  OrderSubPrices({
    num? id,
    String? sn,
    String? title,
    num? orderId,
    num? adj,
    String? reason,
    String? releated,
    String? service,
  }) {
    _id = id;
    _sn = sn;
    _title = title;
    _orderId = orderId;
    _adj = adj;
    _reason = reason;
    _releated = releated;
    _service = service;
  }

  OrderSubPrices.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _title = json['title'];
    _orderId = json['orderId'];
    _adj = json['adj'];
    _reason = json['reason'];
    _releated = json['releated'];
    _service = json['service'];
  }
  num? _id;
  String? _sn;
  String? _title;
  num? _orderId;
  num? _adj;
  String? _reason;
  String? _releated;
  String? _service;
  OrderSubPrices copyWith({
    num? id,
    String? sn,
    String? title,
    num? orderId,
    num? adj,
    String? reason,
    String? releated,
    String? service,
  }) =>
      OrderSubPrices(
        id: id ?? _id,
        sn: sn ?? _sn,
        title: title ?? _title,
        orderId: orderId ?? _orderId,
        adj: adj ?? _adj,
        reason: reason ?? _reason,
        releated: releated ?? _releated,
        service: service ?? _service,
      );
  num? get id => _id;
  String? get sn => _sn;
  String? get title => _title;
  num? get orderId => _orderId;
  num? get adj => _adj;
  String? get reason => _reason;
  String? get releated => _releated;
  String? get service => _service;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sn'] = _sn;
    map['title'] = _title;
    map['orderId'] = _orderId;
    map['adj'] = _adj;
    map['reason'] = _reason;
    map['releated'] = _releated;
    map['service'] = _service;
    return map;
  }
}

/// id : 549
/// mid : "heyday"
/// itemId : "911719642215396305"
/// orderId : 451
/// num : 2
/// totalPrice : 5600
/// unitPrice : 2800
/// itemInfo : {"uid":"911719642215396305","name":"美式咖啡（中杯）","size":"1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538","cover":{"url":"https://storage.heyday-catering.com/saas-servicehub/public/4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282_2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","hash":"4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282","mime":"image/jpeg","name":"2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","size":"325329"},"links":{"pospal":"911719642215396305"},"price":2800,"_cover":"cover","_price":"price","instock":true,"_instock":"instock"}
/// title : "美式咖啡（中杯）"
/// size : "1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538"
/// service : "saas-servicehub"
/// condition : {"place":"B01"}
/// priceKey : "sell_price"
/// links : {"pospal":"911719642215396305"}
/// uid : "911719642215396305"
/// name : "美式咖啡（中杯）"
/// size : "1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538"
/// price : 2800
/// _price : "price"
/// instock : true
/// _instock : "instock"
/// cover : {"url":"https://storage.heyday-catering.com/saas-servicehub/public/4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282_2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","mime":"image/jpeg","name":"2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","size":"325329","hash":"4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282"}
/// _cover : "cover"
/// itemId : "911719642215396305"
/// itemInfo : {"links":{"pospal":"911719642215396305"},"uid":"911719642215396305","name":"美式咖啡（中杯）","size":"1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538","price":2800,"_price":"price","instock":true,"_instock":"instock","cover":{"url":"https://storage.heyday-catering.com/saas-servicehub/public/4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282_2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","mime":"image/jpeg","name":"2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","size":"325329","hash":"4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282"},"_cover":"cover"}
/// num : 2
/// totalPrice : 5600
/// condition : {"place":"B01"}
/// mid : "heyday"
/// priceKey : "sell_price"
/// service : "saas-servicehub"
/// size : "1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538"
/// title : "美式咖啡（中杯）"
/// unitPrice : 2800

class OrderItems {
  OrderItems({
    int? id,
    String? itemId,
    ItemInfo? itemInfo,
    num? number,
    num? totalPrice,
    Condition? condition,
    String? mid,
    String? priceKey,
    String? service,
    String? size,
    String? title,
    num? unitPrice,
    num? refundPrice,
    String? state,
  }) {
    _id = id;
    _itemId = itemId;
    _itemInfo = itemInfo;
    _number = number;
    _totalPrice = totalPrice;
    _condition = condition;
    _mid = mid;
    _priceKey = priceKey;
    _service = service;
    _size = size;
    _title = title;
    _unitPrice = unitPrice;
    _refundPrice = refundPrice;
    _state = state;
  }

  OrderItems.fromJson(dynamic json) {
    _id = json['id'];
    _itemId = json['itemId'];
    _itemInfo =
        json['itemInfo'] != null ? ItemInfo.fromJson(json['itemInfo']) : null;
    _number = json['num'];
    _totalPrice = json['totalPrice'];
    _condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    _mid = json['mid'];
    _priceKey = json['priceKey'];
    _service = json['service'];
    _size = json['size'];
    _title = json['title'];
    _unitPrice = json['unitPrice'];
    _state = json['state'];
    _refundPrice = json['refundPrice'];
  }
  int? _id;
  String? _itemId;
  ItemInfo? _itemInfo;
  num? _number;
  num? _totalPrice;
  Condition? _condition;
  String? _mid;
  String? _priceKey;
  String? _service;
  String? _size;
  String? _title;
  num? _unitPrice;
  num? _refundPrice;
  String? _state;
  OrderItems copyWith({
    int? id,
    String? itemId,
    ItemInfo? itemInfo,
    num? number,
    num? totalPrice,
    Condition? condition,
    String? mid,
    String? priceKey,
    String? service,
    String? size,
    String? title,
    num? unitPrice,
    num? refundPrice,
    String? state,
  }) =>
      OrderItems(
        id: id ?? _id,
        itemId: itemId ?? _itemId,
        itemInfo: itemInfo ?? _itemInfo,
        number: number ?? _number,
        totalPrice: totalPrice ?? _totalPrice,
        condition: condition ?? _condition,
        mid: mid ?? _mid,
        priceKey: priceKey ?? _priceKey,
        service: service ?? _service,
        size: size ?? _size,
        title: title ?? _title,
        unitPrice: unitPrice ?? _unitPrice,
        refundPrice: refundPrice ?? _refundPrice,
        state: state ?? _state,
      );
  int? get id => _id;
  String? get itemId => _itemId;
  ItemInfo? get itemInfo => _itemInfo;
  num? get number => _number;
  num? get totalPrice => _totalPrice;
  Condition? get condition => _condition;
  String? get mid => _mid;
  String? get priceKey => _priceKey;
  String? get service => _service;
  String? get size => _size;
  String? get title => _title;
  num? get unitPrice => _unitPrice;
  num? get refundPrice => _refundPrice;
  String? get state => _state;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['itemId'] = _itemId;
    if (_itemInfo != null) {
      map['itemInfo'] = _itemInfo?.toJson();
    }
    map['num'] = _number;
    map['totalPrice'] = _totalPrice;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['mid'] = _mid;
    map['priceKey'] = _priceKey;
    map['service'] = _service;
    map['size'] = _size;
    map['title'] = _title;
    map['unitPrice'] = _unitPrice;
    return map;
  }
}

class ItemInfo {
  ItemInfo({
    Links? links,
    String? uid,
    String? name,
    String? size,
    num? price,
    bool? instock,
    Cover? cover,
    String? merchant,
  }) {
    _links = links;
    _uid = uid;
    _name = name;
    _size = size;
    _price = price;
    _price = price;
    _instock = instock;
    _instock = instock;
    _cover = cover;
    _cover = cover;
    _merchant = merchant;
  }

  ItemInfo.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
    _uid = json['uid'];
    _name = json['name'];
    _size = json['size'];
    _price = json['price'];
    _instock = json['instock'];
    _cover = json['cover'] != null ? Cover.fromJson(json['cover']) : null;
    _merchant = json['merchant'];
  }
  Links? _links;
  String? _uid;
  String? _name;
  String? _size;
  num? _price;
  bool? _instock;
  Cover? _cover;
  String? _merchant;
  ItemInfo copyWith({
    Links? links,
    String? uid,
    String? name,
    String? size,
    num? price,
    bool? instock,
    Cover? cover,
    String? merchant,
  }) =>
      ItemInfo(
        links: links ?? _links,
        uid: uid ?? _uid,
        name: name ?? _name,
        size: size ?? _size,
        price: price ?? _price,
        instock: instock ?? _instock,
        cover: cover ?? _cover,
        merchant: merchant ?? _merchant,
      );
  Links? get links => _links;
  String? get uid => _uid;
  String? get name => _name;
  String? get size => _size;
  num? get price => _price;
  bool? get instock => _instock;
  Cover? get cover => _cover;
  String? get merchant => _merchant;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    map['uid'] = _uid;
    map['name'] = _name;
    map['size'] = _size;
    map['price'] = _price;
    map['instock'] = _instock;
    map['merchant'] = _merchant;
    if (_cover != null) {
      map['cover'] = _cover?.toJson();
    }
    return map;
  }
}

/// url : "https://storage.heyday-catering.com/saas-servicehub/public/4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282_2b582336-4c06-4eb3-9018-6ba9c375084d.jpg"
/// mime : "image/jpeg"
/// name : "2b582336-4c06-4eb3-9018-6ba9c375084d.jpg"
/// size : "325329"
/// hash : "4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282"

class Cover {
  Cover({
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) {
    _url = url;
    _mime = mime;
    _name = name;
    _size = size;
    _hash = hash;
  }

  Cover.fromJson(dynamic json) {
    _url = json['url'];
    _mime = json['mime'];
    _name = json['name'];
    _size = json['size'];
    _hash = json['hash'];
  }
  String? _url;
  String? _mime;
  String? _name;
  String? _size;
  String? _hash;
  Cover copyWith({
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) =>
      Cover(
        url: url ?? _url,
        mime: mime ?? _mime,
        name: name ?? _name,
        size: size ?? _size,
        hash: hash ?? _hash,
      );
  String? get url => _url;
  String? get mime => _mime;
  String? get name => _name;
  String? get size => _size;
  String? get hash => _hash;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['mime'] = _mime;
    map['name'] = _name;
    map['size'] = _size;
    map['hash'] = _hash;
    return map;
  }
}

/// pospal : "911719642215396305"

class Links {
  Links({
    String? pospal,
  }) {
    _pospal = pospal;
  }

  Links.fromJson(dynamic json) {
    _pospal = json['pospal'];
  }
  String? _pospal;
  Links copyWith({
    String? pospal,
  }) =>
      Links(
        pospal: pospal ?? _pospal,
      );
  String? get pospal => _pospal;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pospal'] = _pospal;
    return map;
  }
}

/// place : "B01"

class Condition {
  Condition({String? place, String? reserveAt}) {
    _place = place;
    _reserveAt = reserveAt;
  }

  Condition.fromJson(dynamic json) {
    _place = json['place'];
    _reserveAt = json['reserveAt'];
  }
  String? _place;
  String? _reserveAt;
  Condition copyWith({
    String? place,
    String? reserveAt,
  }) =>
      Condition(
        place: place ?? _place,
        reserveAt: reserveAt ?? _reserveAt,
      );
  String? get place => _place;
  String? get reserveAt => _reserveAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['place'] = _place;
    map['reserveAt'] = _reserveAt;
    return map;
  }
}

/// id : 2
/// code : "heyday"
/// merchantId : 2
/// title : "盛世餐飲收單系統"
/// createdAt : "2023-08-25T13:41:16.628Z"
/// updatedAt : "2023-08-25T13:41:16.628Z"
/// merchant : {"id":2,"code":"heyday","title":"盛世餐飲","createdAt":"2023-08-25T13:41:15.994Z","updatedAt":"2023-08-25T13:41:15.994Z"}

class Project {
  Project({
    num? id,
    String? code,
    num? merchantId,
    String? title,
    String? createdAt,
    String? updatedAt,
    Merchant? merchant,
  }) {
    _id = id;
    _code = code;
    _merchantId = merchantId;
    _title = title;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _merchant = merchant;
  }

  Project.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _merchantId = json['merchantId'];
    _title = json['title'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _merchant =
        json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
  }
  num? _id;
  String? _code;
  num? _merchantId;
  String? _title;
  String? _createdAt;
  String? _updatedAt;
  Merchant? _merchant;
  Project copyWith({
    num? id,
    String? code,
    num? merchantId,
    String? title,
    String? createdAt,
    String? updatedAt,
    Merchant? merchant,
  }) =>
      Project(
        id: id ?? _id,
        code: code ?? _code,
        merchantId: merchantId ?? _merchantId,
        title: title ?? _title,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        merchant: merchant ?? _merchant,
      );
  num? get id => _id;
  String? get code => _code;
  num? get merchantId => _merchantId;
  String? get title => _title;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Merchant? get merchant => _merchant;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['merchantId'] = _merchantId;
    map['title'] = _title;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    return map;
  }
}

/// id : 2
/// code : "heyday"
/// title : "盛世餐飲"
/// createdAt : "2023-08-25T13:41:15.994Z"
/// updatedAt : "2023-08-25T13:41:15.994Z"

class Merchant {
  Merchant({
    num? id,
    String? code,
    String? title,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _code = code;
    _title = title;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Merchant.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _title = json['title'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _code;
  String? _title;
  String? _createdAt;
  String? _updatedAt;
  Merchant copyWith({
    num? id,
    String? code,
    String? title,
    String? createdAt,
    String? updatedAt,
  }) =>
      Merchant(
        id: id ?? _id,
        code: code ?? _code,
        title: title ?? _title,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get code => _code;
  String? get title => _title;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['title'] = _title;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}

/// shopId : "heyday-B01-reese"
/// shopAddress : "商家地址"

class Branch {
  Branch({
    String? shopId,
    String? shopAddress,
    String? shopTitle,
  }) {
    _shopId = shopId;
    _shopAddress = shopAddress;
    _shopTitle = shopTitle;
  }

  Branch.fromJson(dynamic json) {
    _shopId = json['shopId'];
    _shopAddress = json['shopAddress'];
    _shopTitle = json['shopTitle'];
  }
  String? _shopId;
  String? _shopAddress;
  String? _shopTitle;
  Branch copyWith({
    String? shopId,
    String? shopAddress,
    String? shopTitle,
  }) =>
      Branch(
        shopId: shopId ?? _shopId,
        shopAddress: shopAddress ?? _shopAddress,
        shopTitle: shopTitle ?? _shopTitle,
      );
  String? get shopId => _shopId;
  String? get shopAddress => _shopAddress;
  String? get shopTitle => _shopTitle;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['shopId'] = _shopId;
    map['shopAddress'] = _shopAddress;
    map['shopTitle'] = _shopTitle;
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
    String? address,
    String? title,
    String? service,
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
    _address = address;
    _title = title;
    _service = service;
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
    _address = json['address'];
    _title = json['title'];
    _service = json['service'];
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
  String? _address;
  String? _title;
  String? _service;
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
    String? address,
    String? title,
    String? service,
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
        address: address ?? _address,
        title: title ?? _title,
        service: service ?? _service,
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
  String? get address => _address;
  String? get title => _title;
  String? get service => _service;

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
    map['address'] = _address;
    map['title'] = _title;
    map['service'] = _service;
    return map;
  }
}

/// id : 49
/// orderId : 1468
/// prevStatus : "WAIT_REFUND"
/// nextStatus : "PART_REFUND"
/// reason : null
/// aduitStatus : "PENDING"
/// updatedAt : "2024-03-07T07:55:20.617Z"

class OrderStatusChange {
  OrderStatusChange({
    num? id,
    num? orderId,
    String? prevStatus,
    String? nextStatus,
    dynamic reason,
    String? aduitStatus,
    String? updatedAt,
  }) {
    _id = id;
    _orderId = orderId;
    _prevStatus = prevStatus;
    _nextStatus = nextStatus;
    _reason = reason;
    _aduitStatus = aduitStatus;
    _updatedAt = updatedAt;
  }

  OrderStatusChange.fromJson(dynamic json) {
    _id = json['id'];
    _orderId = json['orderId'];
    _prevStatus = json['prevStatus'];
    _nextStatus = json['nextStatus'];
    _reason = json['reason'];
    _aduitStatus = json['aduitStatus'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _orderId;
  String? _prevStatus;
  String? _nextStatus;
  dynamic _reason;
  String? _aduitStatus;
  String? _updatedAt;
  OrderStatusChange copyWith({
    num? id,
    num? orderId,
    String? prevStatus,
    String? nextStatus,
    dynamic reason,
    String? aduitStatus,
    String? updatedAt,
  }) =>
      OrderStatusChange(
        id: id ?? _id,
        orderId: orderId ?? _orderId,
        prevStatus: prevStatus ?? _prevStatus,
        nextStatus: nextStatus ?? _nextStatus,
        reason: reason ?? _reason,
        aduitStatus: aduitStatus ?? _aduitStatus,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  num? get orderId => _orderId;
  String? get prevStatus => _prevStatus;
  String? get nextStatus => _nextStatus;
  dynamic get reason => _reason;
  String? get aduitStatus => _aduitStatus;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['orderId'] = _orderId;
    map['prevStatus'] = _prevStatus;
    map['nextStatus'] = _nextStatus;
    map['reason'] = _reason;
    map['aduitStatus'] = _aduitStatus;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}
