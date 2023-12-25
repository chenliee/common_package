/// _count : {"_all":70}
/// orderStatus : "CANCELLED"

class OrderCount {
  OrderCount({
      Count? count, 
      String? orderStatus,}){
    _count = count;
    _orderStatus = orderStatus;
}

  OrderCount.fromJson(dynamic json) {
    _count = json['_count'] != null ? Count.fromJson(json['_count']) : null;
    _orderStatus = json['orderStatus'];
  }
  Count? _count;
  String? _orderStatus;
OrderCount copyWith({  Count? count,
  String? orderStatus,
}) => OrderCount(  count: count ?? _count,
  orderStatus: orderStatus ?? _orderStatus,
);
  Count? get count => _count;
  String? get orderStatus => _orderStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_count != null) {
      map['_count'] = _count?.toJson();
    }
    map['orderStatus'] = _orderStatus;
    return map;
  }

}

/// _all : 70

class Count {
  Count({
      num? all,}){
    _all = all;
}

  Count.fromJson(dynamic json) {
    _all = json['_all'];
  }
  num? _all;
Count copyWith({  num? all,
}) => Count(  all: all ?? _all,
);
  num? get all => _all;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_all'] = _all;
    return map;
  }

}