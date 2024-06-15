import 'dart:convert';
/// id : 34
/// merchantId : 1
/// name : "尼古丁真优惠券"
/// score : 50
/// goodsId : null
/// couponId : 66
/// value : 100
/// count : 862
/// sellCount : 0
/// status : 1
/// rule : null
/// limit : null
/// content : "312"
/// explain : "3"
/// deletedAt : null
/// imgUrl : "https://storage.dev.heyday-catering.com:20443/saas-marketing/public/ed987abb7e9dd32264f9938364d5ef7be757c8a1c7c641e306c3172e3581cdd3_macauscholar.png"

ScoreItem scoreItemFromJson(String str) => ScoreItem.fromJson(json.decode(str));
String scoreItemToJson(ScoreItem data) => json.encode(data.toJson());
class ScoreItem {
  ScoreItem({
      num? id, 
      num? merchantId, 
      String? name, 
      num? score, 
      dynamic goodsId, 
      num? couponId, 
      num? value, 
      num? count, 
      num? sellCount, 
      num? status, 
      dynamic rule, 
      dynamic limit, 
      String? content, 
      String? explain, 
      dynamic deletedAt, 
      String? imgUrl,}){
    _id = id;
    _merchantId = merchantId;
    _name = name;
    _score = score;
    _goodsId = goodsId;
    _couponId = couponId;
    _value = value;
    _count = count;
    _sellCount = sellCount;
    _status = status;
    _rule = rule;
    _limit = limit;
    _content = content;
    _explain = explain;
    _deletedAt = deletedAt;
    _imgUrl = imgUrl;
}

  ScoreItem.fromJson(dynamic json) {
    _id = json['id'];
    _merchantId = json['merchantId'];
    _name = json['name'];
    _score = json['score'];
    _goodsId = json['goodsId'];
    _couponId = json['couponId'];
    _value = json['value'];
    _count = json['count'];
    _sellCount = json['sellCount'];
    _status = json['status'];
    _rule = json['rule'];
    _limit = json['limit'];
    _content = json['content'];
    _explain = json['explain'];
    _deletedAt = json['deletedAt'];
    _imgUrl = json['imgUrl'];
  }
  num? _id;
  num? _merchantId;
  String? _name;
  num? _score;
  dynamic _goodsId;
  num? _couponId;
  num? _value;
  num? _count;
  num? _sellCount;
  num? _status;
  dynamic _rule;
  dynamic _limit;
  String? _content;
  String? _explain;
  dynamic _deletedAt;
  String? _imgUrl;
ScoreItem copyWith({  num? id,
  num? merchantId,
  String? name,
  num? score,
  dynamic goodsId,
  num? couponId,
  num? value,
  num? count,
  num? sellCount,
  num? status,
  dynamic rule,
  dynamic limit,
  String? content,
  String? explain,
  dynamic deletedAt,
  String? imgUrl,
}) => ScoreItem(  id: id ?? _id,
  merchantId: merchantId ?? _merchantId,
  name: name ?? _name,
  score: score ?? _score,
  goodsId: goodsId ?? _goodsId,
  couponId: couponId ?? _couponId,
  value: value ?? _value,
  count: count ?? _count,
  sellCount: sellCount ?? _sellCount,
  status: status ?? _status,
  rule: rule ?? _rule,
  limit: limit ?? _limit,
  content: content ?? _content,
  explain: explain ?? _explain,
  deletedAt: deletedAt ?? _deletedAt,
  imgUrl: imgUrl ?? _imgUrl,
);
  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get name => _name;
  num? get score => _score;
  dynamic get goodsId => _goodsId;
  num? get couponId => _couponId;
  num? get value => _value;
  num? get count => _count;
  num? get sellCount => _sellCount;
  num? get status => _status;
  dynamic get rule => _rule;
  dynamic get limit => _limit;
  String? get content => _content;
  String? get explain => _explain;
  dynamic get deletedAt => _deletedAt;
  String? get imgUrl => _imgUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['merchantId'] = _merchantId;
    map['name'] = _name;
    map['score'] = _score;
    map['goodsId'] = _goodsId;
    map['couponId'] = _couponId;
    map['value'] = _value;
    map['count'] = _count;
    map['sellCount'] = _sellCount;
    map['status'] = _status;
    map['rule'] = _rule;
    map['limit'] = _limit;
    map['content'] = _content;
    map['explain'] = _explain;
    map['deletedAt'] = _deletedAt;
    map['imgUrl'] = _imgUrl;
    return map;
  }

}