import 'dart:convert';
/// id : 2
/// sn : "771a35c0-59e4-4018-8d9d-583e5fa3932c"
/// typeId : 3
/// ruleId : 9
/// memberId : 48
/// from : 1720400400
/// to : 1720778400
/// attachment : null
/// ext : null
/// status : "init"
/// approved : false
/// createdAt : "2024-07-08T07:31:32.629Z"
/// updatedAt : "2024-07-08T07:31:32.629Z"

LeaveItem leaveItemFromJson(String str) => LeaveItem.fromJson(json.decode(str));
String leaveItemToJson(LeaveItem data) => json.encode(data.toJson());
class LeaveItem {
  LeaveItem({
      num? id, 
      String? sn, 
      num? typeId, 
      num? ruleId, 
      num? memberId, 
      num? from, 
      num? to, 
      dynamic attachment, 
      dynamic ext, 
      String? status, 
      bool? approved, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _sn = sn;
    _typeId = typeId;
    _ruleId = ruleId;
    _memberId = memberId;
    _from = from;
    _to = to;
    _attachment = attachment;
    _ext = ext;
    _status = status;
    _approved = approved;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  LeaveItem.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _typeId = json['typeId'];
    _ruleId = json['ruleId'];
    _memberId = json['memberId'];
    _from = json['from'];
    _to = json['to'];
    _attachment = json['attachment'];
    _ext = json['ext'];
    _status = json['status'];
    _approved = json['approved'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _sn;
  num? _typeId;
  num? _ruleId;
  num? _memberId;
  num? _from;
  num? _to;
  dynamic _attachment;
  dynamic _ext;
  String? _status;
  bool? _approved;
  String? _createdAt;
  String? _updatedAt;
LeaveItem copyWith({  num? id,
  String? sn,
  num? typeId,
  num? ruleId,
  num? memberId,
  num? from,
  num? to,
  dynamic attachment,
  dynamic ext,
  String? status,
  bool? approved,
  String? createdAt,
  String? updatedAt,
}) => LeaveItem(  id: id ?? _id,
  sn: sn ?? _sn,
  typeId: typeId ?? _typeId,
  ruleId: ruleId ?? _ruleId,
  memberId: memberId ?? _memberId,
  from: from ?? _from,
  to: to ?? _to,
  attachment: attachment ?? _attachment,
  ext: ext ?? _ext,
  status: status ?? _status,
  approved: approved ?? _approved,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get sn => _sn;
  num? get typeId => _typeId;
  num? get ruleId => _ruleId;
  num? get memberId => _memberId;
  num? get from => _from;
  num? get to => _to;
  dynamic get attachment => _attachment;
  dynamic get ext => _ext;
  String? get status => _status;
  bool? get approved => _approved;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sn'] = _sn;
    map['typeId'] = _typeId;
    map['ruleId'] = _ruleId;
    map['memberId'] = _memberId;
    map['from'] = _from;
    map['to'] = _to;
    map['attachment'] = _attachment;
    map['ext'] = _ext;
    map['status'] = _status;
    map['approved'] = _approved;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}