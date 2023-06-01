/// id : 0
/// alter : 0
/// content : "string"
/// type : 0
/// addTime : "string"

class ScoreRecord {
  ScoreRecord({
    num? id,
    num? alter,
    String? content,
    num? type,
    String? addTime,
  }) {
    _id = id;
    _alter = alter;
    _content = content;
    _type = type;
    _addTime = addTime;
  }

  ScoreRecord.fromJson(dynamic json) {
    _id = json['id'];
    _alter = json['alter'];
    _content = json['content'];
    _type = json['type'];
    _addTime = json['addTime'];
  }
  num? _id;
  num? _alter;
  String? _content;
  num? _type;
  String? _addTime;
  ScoreRecord copyWith({
    num? id,
    num? alter,
    String? content,
    num? type,
    String? addTime,
  }) =>
      ScoreRecord(
        id: id ?? _id,
        alter: alter ?? _alter,
        content: content ?? _content,
        type: type ?? _type,
        addTime: addTime ?? _addTime,
      );
  num? get id => _id;
  num? get alter => _alter;
  String? get content => _content;
  num? get type => _type;
  String? get addTime => _addTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['alter'] = _alter;
    map['content'] = _content;
    map['type'] = _type;
    map['addTime'] = _addTime;
    return map;
  }
}
