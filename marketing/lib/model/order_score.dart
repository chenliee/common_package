/// limit : 0
/// max : 0
/// maxAmount : 0

class OrderScore {
  OrderScore({
    num? limit,
    num? max,
    num? maxAmount,
  }) {
    _limit = limit;
    _max = max;
    _maxAmount = maxAmount;
  }

  OrderScore.fromJson(dynamic json) {
    _limit = json['limit'];
    _max = json['max'];
    _maxAmount = json['maxAmount'];
  }
  num? _limit;
  num? _max;
  num? _maxAmount;
  OrderScore copyWith({
    num? limit,
    num? max,
    num? maxAmount,
  }) =>
      OrderScore(
        limit: limit ?? _limit,
        max: max ?? _max,
        maxAmount: maxAmount ?? _maxAmount,
      );
  num? get limit => _limit;
  num? get max => _max;
  num? get maxAmount => _maxAmount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['limit'] = _limit;
    map['max'] = _max;
    map['maxAmount'] = _maxAmount;
    return map;
  }
}
