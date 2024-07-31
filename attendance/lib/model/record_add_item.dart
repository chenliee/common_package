import 'dart:convert';
/// id : 322
/// sn : "ede806ae-717e-4f61-a006-e01c5655f021"
/// timeId : 744
/// memberId : 8
/// leaveId : 11
/// ext : null
/// createdAt : "2024-07-27T05:12:31.129Z"
/// updatedAt : "2024-07-27T05:12:31.129Z"

RecordAddItem recordAddItemFromJson(String str) => RecordAddItem.fromJson(json.decode(str));
String recordAddItemToJson(RecordAddItem data) => json.encode(data.toJson());
class RecordAddItem {
  RecordAddItem({
      num? id, 
      String? sn, 
      num? timeId, 
      num? memberId, 
      num? leaveId, 
      dynamic ext, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _sn = sn;
    _timeId = timeId;
    _memberId = memberId;
    _leaveId = leaveId;
    _ext = ext;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  RecordAddItem.fromJson(dynamic json) {
    _id = json['id'];
    _sn = json['sn'];
    _timeId = json['timeId'];
    _memberId = json['memberId'];
    _leaveId = json['leaveId'];
    _ext = json['ext'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _sn;
  num? _timeId;
  num? _memberId;
  num? _leaveId;
  dynamic _ext;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get sn => _sn;
  num? get timeId => _timeId;
  num? get memberId => _memberId;
  num? get leaveId => _leaveId;
  dynamic get ext => _ext;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sn'] = _sn;
    map['timeId'] = _timeId;
    map['memberId'] = _memberId;
    map['leaveId'] = _leaveId;
    map['ext'] = _ext;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}