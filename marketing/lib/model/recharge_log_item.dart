/// id : 66
/// rechargeActId : 1
/// targetType : "user"
/// targetId : "230900200148"
/// alter : 31000
/// total : null
/// desc : "線下充值"
/// number : ""
/// sn : ""
/// code : "28855808-f6af-476b-8690-9f2672eb7537"
/// createdAt : "2023-10-13T17:21:26.536Z"
/// updatedAt : "2023-10-13T17:21:26.536Z"

class RechargeLogItem {
  RechargeLogItem({
      num? id, 
      num? rechargeActId, 
      String? targetType, 
      String? targetId, 
      num? alter, 
      dynamic total, 
      String? desc, 
      String? number, 
      String? sn, 
      String? code, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _rechargeActId = rechargeActId;
    _targetType = targetType;
    _targetId = targetId;
    _alter = alter;
    _total = total;
    _desc = desc;
    _number = number;
    _sn = sn;
    _code = code;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  RechargeLogItem.fromJson(dynamic json) {
    _id = json['id'];
    _rechargeActId = json['rechargeActId'];
    _targetType = json['targetType'];
    _targetId = json['targetId'];
    _alter = json['alter'];
    _total = json['total'];
    _desc = json['desc'];
    _number = json['number'];
    _sn = json['sn'];
    _code = json['code'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _rechargeActId;
  String? _targetType;
  String? _targetId;
  num? _alter;
  dynamic _total;
  String? _desc;
  String? _number;
  String? _sn;
  String? _code;
  String? _createdAt;
  String? _updatedAt;
RechargeLogItem copyWith({  num? id,
  num? rechargeActId,
  String? targetType,
  String? targetId,
  num? alter,
  dynamic total,
  String? desc,
  String? number,
  String? sn,
  String? code,
  String? createdAt,
  String? updatedAt,
}) => RechargeLogItem(  id: id ?? _id,
  rechargeActId: rechargeActId ?? _rechargeActId,
  targetType: targetType ?? _targetType,
  targetId: targetId ?? _targetId,
  alter: alter ?? _alter,
  total: total ?? _total,
  desc: desc ?? _desc,
  number: number ?? _number,
  sn: sn ?? _sn,
  code: code ?? _code,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  num? get rechargeActId => _rechargeActId;
  String? get targetType => _targetType;
  String? get targetId => _targetId;
  num? get alter => _alter;
  dynamic get total => _total;
  String? get desc => _desc;
  String? get number => _number;
  String? get sn => _sn;
  String? get code => _code;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['rechargeActId'] = _rechargeActId;
    map['targetType'] = _targetType;
    map['targetId'] = _targetId;
    map['alter'] = _alter;
    map['total'] = _total;
    map['desc'] = _desc;
    map['number'] = _number;
    map['sn'] = _sn;
    map['code'] = _code;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}