import 'dart:convert';
/// id : 3
/// describe : "<p>消費1MOP得1積分，250積分可以抵扣1MOP</p>"
/// merchantId : 4
/// rule : {"price":1,"charge":0,"pledge":true,"comment":0,"vipBuff":[{"vipCardId":"de198c4b-3cdb-467a-9af9-b5c422e7d9f3"}],"comExtra":0,"regScore":100,"pledgeRate":500,"priceScore":1,"chargeScore":0,"pledgeMaxRate":50,"pledgeSatisfy":1}
/// status : true
/// expire : 0
/// astrict : 9999
/// deletedAt : null

ScoreDesc scoreDescFromJson(String str) => ScoreDesc.fromJson(json.decode(str));
String scoreDescToJson(ScoreDesc data) => json.encode(data.toJson());
class ScoreDesc {
  ScoreDesc({
      num? id, 
      String? describe, 
      num? merchantId, 
      Rule? rule, 
      bool? status, 
      num? expire, 
      num? astrict, 
      dynamic deletedAt,}){
    _id = id;
    _describe = describe;
    _merchantId = merchantId;
    _rule = rule;
    _status = status;
    _expire = expire;
    _astrict = astrict;
    _deletedAt = deletedAt;
}

  ScoreDesc.fromJson(dynamic json) {
    _id = json['id'];
    _describe = json['describe'];
    _merchantId = json['merchantId'];
    _rule = json['rule'] != null ? Rule.fromJson(json['rule']) : null;
    _status = json['status'];
    _expire = json['expire'];
    _astrict = json['astrict'];
    _deletedAt = json['deletedAt'];
  }
  num? _id;
  String? _describe;
  num? _merchantId;
  Rule? _rule;
  bool? _status;
  num? _expire;
  num? _astrict;
  dynamic _deletedAt;
ScoreDesc copyWith({  num? id,
  String? describe,
  num? merchantId,
  Rule? rule,
  bool? status,
  num? expire,
  num? astrict,
  dynamic deletedAt,
}) => ScoreDesc(  id: id ?? _id,
  describe: describe ?? _describe,
  merchantId: merchantId ?? _merchantId,
  rule: rule ?? _rule,
  status: status ?? _status,
  expire: expire ?? _expire,
  astrict: astrict ?? _astrict,
  deletedAt: deletedAt ?? _deletedAt,
);
  num? get id => _id;
  String? get describe => _describe;
  num? get merchantId => _merchantId;
  Rule? get rule => _rule;
  bool? get status => _status;
  num? get expire => _expire;
  num? get astrict => _astrict;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['describe'] = _describe;
    map['merchantId'] = _merchantId;
    if (_rule != null) {
      map['rule'] = _rule?.toJson();
    }
    map['status'] = _status;
    map['expire'] = _expire;
    map['astrict'] = _astrict;
    map['deletedAt'] = _deletedAt;
    return map;
  }

}

/// price : 1
/// charge : 0
/// pledge : true
/// comment : 0
/// vipBuff : [{"vipCardId":"de198c4b-3cdb-467a-9af9-b5c422e7d9f3"}]
/// comExtra : 0
/// regScore : 100
/// pledgeRate : 500
/// priceScore : 1
/// chargeScore : 0
/// pledgeMaxRate : 50
/// pledgeSatisfy : 1

Rule ruleFromJson(String str) => Rule.fromJson(json.decode(str));
String ruleToJson(Rule data) => json.encode(data.toJson());
class Rule {
  Rule({
      num? price, 
      num? charge, 
      bool? pledge, 
      num? comment, 
      List<VipBuff>? vipBuff, 
      num? comExtra, 
      num? regScore, 
      num? pledgeRate, 
      num? priceScore, 
      num? chargeScore, 
      num? pledgeMaxRate, 
      num? pledgeSatisfy,}){
    _price = price;
    _charge = charge;
    _pledge = pledge;
    _comment = comment;
    _vipBuff = vipBuff;
    _comExtra = comExtra;
    _regScore = regScore;
    _pledgeRate = pledgeRate;
    _priceScore = priceScore;
    _chargeScore = chargeScore;
    _pledgeMaxRate = pledgeMaxRate;
    _pledgeSatisfy = pledgeSatisfy;
}

  Rule.fromJson(dynamic json) {
    _price = json['price'];
    _charge = json['charge'];
    _pledge = json['pledge'];
    _comment = json['comment'];
    if (json['vipBuff'] != null) {
      _vipBuff = [];
      json['vipBuff'].forEach((v) {
        _vipBuff?.add(VipBuff.fromJson(v));
      });
    }
    _comExtra = json['comExtra'];
    _regScore = json['regScore'];
    _pledgeRate = json['pledgeRate'];
    _priceScore = json['priceScore'];
    _chargeScore = json['chargeScore'];
    _pledgeMaxRate = json['pledgeMaxRate'];
    _pledgeSatisfy = json['pledgeSatisfy'];
  }
  num? _price;
  num? _charge;
  bool? _pledge;
  num? _comment;
  List<VipBuff>? _vipBuff;
  num? _comExtra;
  num? _regScore;
  num? _pledgeRate;
  num? _priceScore;
  num? _chargeScore;
  num? _pledgeMaxRate;
  num? _pledgeSatisfy;
Rule copyWith({  num? price,
  num? charge,
  bool? pledge,
  num? comment,
  List<VipBuff>? vipBuff,
  num? comExtra,
  num? regScore,
  num? pledgeRate,
  num? priceScore,
  num? chargeScore,
  num? pledgeMaxRate,
  num? pledgeSatisfy,
}) => Rule(  price: price ?? _price,
  charge: charge ?? _charge,
  pledge: pledge ?? _pledge,
  comment: comment ?? _comment,
  vipBuff: vipBuff ?? _vipBuff,
  comExtra: comExtra ?? _comExtra,
  regScore: regScore ?? _regScore,
  pledgeRate: pledgeRate ?? _pledgeRate,
  priceScore: priceScore ?? _priceScore,
  chargeScore: chargeScore ?? _chargeScore,
  pledgeMaxRate: pledgeMaxRate ?? _pledgeMaxRate,
  pledgeSatisfy: pledgeSatisfy ?? _pledgeSatisfy,
);
  num? get price => _price;
  num? get charge => _charge;
  bool? get pledge => _pledge;
  num? get comment => _comment;
  List<VipBuff>? get vipBuff => _vipBuff;
  num? get comExtra => _comExtra;
  num? get regScore => _regScore;
  num? get pledgeRate => _pledgeRate;
  num? get priceScore => _priceScore;
  num? get chargeScore => _chargeScore;
  num? get pledgeMaxRate => _pledgeMaxRate;
  num? get pledgeSatisfy => _pledgeSatisfy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['price'] = _price;
    map['charge'] = _charge;
    map['pledge'] = _pledge;
    map['comment'] = _comment;
    if (_vipBuff != null) {
      map['vipBuff'] = _vipBuff?.map((v) => v.toJson()).toList();
    }
    map['comExtra'] = _comExtra;
    map['regScore'] = _regScore;
    map['pledgeRate'] = _pledgeRate;
    map['priceScore'] = _priceScore;
    map['chargeScore'] = _chargeScore;
    map['pledgeMaxRate'] = _pledgeMaxRate;
    map['pledgeSatisfy'] = _pledgeSatisfy;
    return map;
  }

}

/// vipCardId : "de198c4b-3cdb-467a-9af9-b5c422e7d9f3"

VipBuff vipBuffFromJson(String str) => VipBuff.fromJson(json.decode(str));
String vipBuffToJson(VipBuff data) => json.encode(data.toJson());
class VipBuff {
  VipBuff({
      String? vipCardId,}){
    _vipCardId = vipCardId;
}

  VipBuff.fromJson(dynamic json) {
    _vipCardId = json['vipCardId'];
  }
  String? _vipCardId;
VipBuff copyWith({  String? vipCardId,
}) => VipBuff(  vipCardId: vipCardId ?? _vipCardId,
);
  String? get vipCardId => _vipCardId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['vipCardId'] = _vipCardId;
    return map;
  }

}