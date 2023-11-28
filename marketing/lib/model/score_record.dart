/// id : 7173
/// adjValue : 100
/// type : "backstage"
/// createdAt : "2023-11-17 11:25:50"
/// balance : 100

class ScoreRecord {
  ScoreRecord({
      num? id, 
      num? adjValue, 
      String? type, 
      String? createdAt, 
      num? balance,}){
    _id = id;
    _adjValue = adjValue;
    _type = type;
    _createdAt = createdAt;
    _balance = balance;
}

  ScoreRecord.fromJson(dynamic json) {
    _id = json['id'];
    _adjValue = json['adjValue'];
    _type = json['type'];
    _createdAt = json['createdAt'];
    _balance = json['balance'];
  }
  num? _id;
  num? _adjValue;
  String? _type;
  String? _createdAt;
  num? _balance;
ScoreRecord copyWith({  num? id,
  num? adjValue,
  String? type,
  String? createdAt,
  num? balance,
}) => ScoreRecord(  id: id ?? _id,
  adjValue: adjValue ?? _adjValue,
  type: type ?? _type,
  createdAt: createdAt ?? _createdAt,
  balance: balance ?? _balance,
);
  num? get id => _id;
  num? get adjValue => _adjValue;
  String? get type => _type;
  String? get createdAt => _createdAt;
  num? get balance => _balance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['adjValue'] = _adjValue;
    map['type'] = _type;
    map['createdAt'] = _createdAt;
    map['balance'] = _balance;
    return map;
  }

}