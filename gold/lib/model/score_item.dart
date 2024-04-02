import 'dart:convert';
/// title : "月销量"
/// value : 4
/// targetId : "885015986581166127"
/// code : "sale"
/// period : "1M"

ScoreItem scoreItemFromJson(String str) => ScoreItem.fromJson(json.decode(str));
String scoreItemToJson(ScoreItem data) => json.encode(data.toJson());
class ScoreItem {
  ScoreItem({
      String? title, 
      num? value, 
      String? targetId, 
      String? code, 
      String? period,}){
    _title = title;
    _value = value;
    _targetId = targetId;
    _code = code;
    _period = period;
}

  ScoreItem.fromJson(dynamic json) {
    _title = json['title'];
    _value = json['value'];
    _targetId = json['targetId'];
    _code = json['code'];
    _period = json['period'];
  }
  String? _title;
  num? _value;
  String? _targetId;
  String? _code;
  String? _period;
ScoreItem copyWith({  String? title,
  num? value,
  String? targetId,
  String? code,
  String? period,
}) => ScoreItem(  title: title ?? _title,
  value: value ?? _value,
  targetId: targetId ?? _targetId,
  code: code ?? _code,
  period: period ?? _period,
);
  String? get title => _title;
  num? get value => _value;
  String? get targetId => _targetId;
  String? get code => _code;
  String? get period => _period;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['value'] = _value;
    map['targetId'] = _targetId;
    map['code'] = _code;
    map['period'] = _period;
    return map;
  }

}