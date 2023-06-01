/// id : 0
/// name : "string"
/// imgUrl : "string"
/// score : 0
/// addTime : "string"
/// cardAt : "string"

class SwapRecord {
  SwapRecord({
    num? id,
    String? name,
    String? imgUrl,
    num? score,
    String? addTime,
    String? cardAt,
  }) {
    _id = id;
    _name = name;
    _imgUrl = imgUrl;
    _score = score;
    _addTime = addTime;
    _cardAt = cardAt;
  }

  SwapRecord.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _imgUrl = json['imgUrl'];
    _score = json['score'];
    _addTime = json['addTime'];
    _cardAt = json['cardAt'];
  }

  num? _id;
  String? _name;
  String? _imgUrl;
  num? _score;
  String? _addTime;
  String? _cardAt;

  SwapRecord copyWith({
    num? id,
    String? name,
    String? imgUrl,
    num? score,
    String? addTime,
    String? cardAt,
  }) =>
      SwapRecord(
        id: id ?? _id,
        name: name ?? _name,
        imgUrl: imgUrl ?? _imgUrl,
        score: score ?? _score,
        addTime: addTime ?? _addTime,
        cardAt: cardAt ?? _cardAt,
      );

  num? get id => _id;
  String? get name => _name;
  String? get imgUrl => _imgUrl;
  num? get score => _score;
  String? get addTime => _addTime;
  String? get cardAt => _cardAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['imgUrl'] = _imgUrl;
    map['score'] = _score;
    map['addTime'] = _addTime;
    map['cardAt'] = _cardAt;
    return map;
  }
}
