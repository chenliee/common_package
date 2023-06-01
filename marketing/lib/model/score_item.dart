/// id : 0
/// name : "string"
/// imgUrl : "string"
/// score : 0
/// value : 0
/// count : 0
/// sellCount : 0
/// status : 0
/// goodsId : "string"
/// limit : 0
/// content : "string"
/// explain : "string"

class ScoreItem {
  ScoreItem({
    num? id,
    String? name,
    String? imgUrl,
    num? score,
    num? value,
    num? count,
    num? sellCount,
    num? status,
    String? goodsId,
    num? limit,
    String? content,
    String? explain,
  }) {
    _id = id;
    _name = name;
    _imgUrl = imgUrl;
    _score = score;
    _value = value;
    _count = count;
    _sellCount = sellCount;
    _status = status;
    _goodsId = goodsId;
    _limit = limit;
    _content = content;
    _explain = explain;
  }

  ScoreItem.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _imgUrl = json['imgUrl'];
    _score = json['score'];
    _value = json['value'];
    _count = json['count'];
    _sellCount = json['sellCount'];
    _status = json['status'];
    _goodsId = json['goodsId'];
    _limit = json['limit'];
    _content = json['content'];
    _explain = json['explain'];
  }

  num? _id;
  String? _name;
  String? _imgUrl;
  num? _score;
  num? _value;
  num? _count;
  num? _sellCount;
  num? _status;
  String? _goodsId;
  num? _limit;
  String? _content;
  String? _explain;

  ScoreItem copyWith({
    num? id,
    String? name,
    String? imgUrl,
    num? score,
    num? value,
    num? count,
    num? sellCount,
    num? status,
    String? goodsId,
    num? limit,
    String? content,
    String? explain,
  }) =>
      ScoreItem(
        id: id ?? _id,
        name: name ?? _name,
        imgUrl: imgUrl ?? _imgUrl,
        score: score ?? _score,
        value: value ?? _value,
        count: count ?? _count,
        sellCount: sellCount ?? _sellCount,
        status: status ?? _status,
        goodsId: goodsId ?? _goodsId,
        limit: limit ?? _limit,
        content: content ?? _content,
        explain: explain ?? _explain,
      );

  num? get id => _id;
  String? get name => _name;
  String? get imgUrl => _imgUrl;
  num? get score => _score;
  num? get value => _value;
  num? get count => _count;
  num? get sellCount => _sellCount;
  num? get status => _status;
  String? get goodsId => _goodsId;
  num? get limit => _limit;
  String? get content => _content;
  String? get explain => _explain;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['imgUrl'] = _imgUrl;
    map['score'] = _score;
    map['value'] = _value;
    map['count'] = _count;
    map['sellCount'] = _sellCount;
    map['status'] = _status;
    map['goodsId'] = _goodsId;
    map['limit'] = _limit;
    map['content'] = _content;
    map['explain'] = _explain;
    return map;
  }
}
