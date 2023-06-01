/// id : 3
/// projectId : 2
/// typeId : 2
/// code : "top"
/// title : "首页顶部"
/// number : 3

class PositionCode {
  PositionCode({
    num? id,
    num? projectId,
    num? typeId,
    String? code,
    String? title,
    num? number,
  }) {
    _id = id;
    _projectId = projectId;
    _typeId = typeId;
    _code = code;
    _title = title;
    _number = number;
  }

  PositionCode.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _typeId = json['typeId'];
    _code = json['code'];
    _title = json['title'];
    _number = json['num'];
  }
  num? _id;
  num? _projectId;
  num? _typeId;
  String? _code;
  String? _title;
  num? _number;
  PositionCode copyWith({
    num? id,
    num? projectId,
    num? typeId,
    String? code,
    String? title,
    num? number,
  }) =>
      PositionCode(
        id: id ?? _id,
        projectId: projectId ?? _projectId,
        typeId: typeId ?? _typeId,
        code: code ?? _code,
        title: title ?? _title,
        number: number ?? _number,
      );
  num? get id => _id;
  num? get projectId => _projectId;
  num? get typeId => _typeId;
  String? get code => _code;
  String? get title => _title;
  num? get number => _number;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['typeId'] = _typeId;
    map['code'] = _code;
    map['title'] = _title;
    map['num'] = _number;
    return map;
  }
}
