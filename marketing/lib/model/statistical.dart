/// id : 0
/// uid : "string"
/// balance : 0
/// couponNum : 0

class Statistical {
  Statistical({
      num? id, 
      String? uid, 
      num? balance, 
      num? couponNum,}){
    _id = id;
    _uid = uid;
    _balance = balance;
    _couponNum = couponNum;
}

  Statistical.fromJson(dynamic json) {
    _id = json['id'];
    _uid = json['uid'];
    _balance = json['balance'];
    _couponNum = json['couponNum'];
  }
  num? _id;
  String? _uid;
  num? _balance;
  num? _couponNum;
Statistical copyWith({  num? id,
  String? uid,
  num? balance,
  num? couponNum,
}) => Statistical(  id: id ?? _id,
  uid: uid ?? _uid,
  balance: balance ?? _balance,
  couponNum: couponNum ?? _couponNum,
);
  num? get id => _id;
  String? get uid => _uid;
  num? get balance => _balance;
  num? get couponNum => _couponNum;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['uid'] = _uid;
    map['balance'] = _balance;
    map['couponNum'] = _couponNum;
    return map;
  }

}