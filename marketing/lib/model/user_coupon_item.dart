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
    String? endTime,
    String? description,
    bool? plus,
    num? cost,
    num? percent,
    num? doorsill,
    String? cause,
    String? code,
    bool? valid,
  }) {
    _id = id;
    _name = name;
    _endTime = endTime;
    _description = description;
    _plus = plus;
    _cost = cost;
    _doorsill = doorsill;
    _cause = cause;
    _valid = valid;
  }

  UserCouponItem.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _endTime = json['endTime'];
    _description = json['description'];
    _plus = json['plus'];
    _cost = json['cost'];
    _percent = json['percent'];
    _doorsill = json['doorsill'];
    _cause = json['cause'] ?? '';
    _code = json['code'];
    _valid = json['valid'];
  }

  num? _id;
  String? _name;
  String? _endTime;
  String? _description;
  bool? _plus;
  num? _cost;
  num? _percent;
  num? _doorsill;
  String? _cause;
  String? _code;
  bool? _valid;

  UserCouponItem copyWith({
    num? id,
    String? name,
    String? endTime,
    String? description,
    bool? plus,
    num? cost,
    num? doorsill,
    num? percent,
    String? cause,
    String? code,
    bool? valid,
  }) =>
      UserCouponItem(
          id: id ?? _id,
          name: name ?? _name,
          endTime: endTime ?? _endTime,
          description: description ?? _description,
          plus: plus ?? _plus,
          cost: cost ?? _cost,
          doorsill: doorsill ?? _doorsill,
          cause: cause ?? _cause,
          code: code ?? _code,
          percent: percent ?? _percent,
          valid: valid ?? _valid);

  num? get id => _id;
  String? get name => _name;
  String? get endTime => _endTime;
  String? get description => _description;
  bool? get plus => _plus;
  num? get cost => _cost;
  num? get percent => _percent;
  num? get doorsill => _doorsill;
  String? get cause => _cause;
  String? get code => _code;
  bool? get valid => _valid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['endTime'] = _endTime;
    map['description'] = _description;
    map['plus'] = _plus;
    map['cost'] = _cost;
    map['percent'] = _percent;
    map['doorsill'] = _doorsill;
    map['cause'] = _cause;
    map['code'] = _code;
    map['valid'] = _valid;
    return map;
  }
}
