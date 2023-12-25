import 'order_item.dart';

/// orderItems : [{"itemId":"911719642215396305","itemInfo":{"links":{"pospal":"911719642215396305"},"uid":"911719642215396305","name":"美式咖啡（中杯）","size":"1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538","price":2800,"_price":"price","instock":true,"_instock":"instock","cover":{"url":"https://storage.heyday-catering.com/saas-servicehub/public/4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282_2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","mime":"image/jpeg","name":"2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","size":"325329","hash":"4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282"},"_cover":"cover"},"num":2,"totalPrice":5600,"condition":{"place":"B01"},"mid":"heyday","priceKey":"sell_price","service":"saas-servicehub","size":"1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538","title":"美式咖啡（中杯）","unitPrice":2800},{"itemId":"608987524999737694","itemInfo":{"links":{"pospal":"608987524999737694"},"uid":"608987524999737694","name":"美式咖啡（大杯）","size":"1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538","price":3300,"_price":"price","instock":true,"_instock":"instock","cover":{"url":"https://storage.heyday-catering.com/saas-servicehub/public/4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282_2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","mime":"image/jpeg","name":"2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","size":"325329","hash":"4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282"},"_cover":"cover"},"num":1,"totalPrice":3300,"condition":{"place":"B01"},"mid":"heyday","priceKey":"sell_price","service":"saas-servicehub","size":"1680148323521139535|1680148323521159219|1686551779273497974|1686551937668595639|1686552116531345538","title":"美式咖啡（大杯）","unitPrice":3300}]
/// orderSubPrices : [{"service":"saas-order-hub","sn":"packingCost","title":"包裝費","adj":0,"reason":"包裝費","releated":"packingCost"}]
/// amount : 8900
/// realAmout : 8900

class ComputeOrder {
  ComputeOrder({
    List<OrderItems>? orderItems,
    List<OrderSubPrices>? orderSubPrices,
    num? amount,
    num? realAmout,
  }) {
    _orderItems = orderItems;
    _orderSubPrices = orderSubPrices;
    _amount = amount;
    _realAmout = realAmout;
  }

  ComputeOrder.fromJson(dynamic json) {
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
    _amount = json['amount'];
    _realAmout = json['realAmout'];
  }
  List<OrderItems>? _orderItems;
  List<OrderSubPrices>? _orderSubPrices;
  num? _amount;
  num? _realAmout;
  ComputeOrder copyWith({
    List<OrderItems>? orderItems,
    List<OrderSubPrices>? orderSubPrices,
    num? amount,
    num? realAmout,
  }) =>
      ComputeOrder(
        orderItems: orderItems ?? _orderItems,
        orderSubPrices: orderSubPrices ?? _orderSubPrices,
        amount: amount ?? _amount,
        realAmout: realAmout ?? _realAmout,
      );
  List<OrderItems>? get orderItems => _orderItems;
  List<OrderSubPrices>? get orderSubPrices => _orderSubPrices;
  num? get amount => _amount;
  num? get realAmout => _realAmout;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_orderItems != null) {
      map['orderItems'] = _orderItems?.map((v) => v.toJson()).toList();
    }
    if (_orderSubPrices != null) {
      map['orderSubPrices'] = _orderSubPrices?.map((v) => v.toJson()).toList();
    }
    map['amount'] = _amount;
    map['realAmout'] = _realAmout;
    return map;
  }
}
