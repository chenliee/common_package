/// id : 1
/// merchantId : 1
/// name : "测试問卷"
/// description : null
/// startAt : "2023-07-06T06:34:25.381Z"
/// endAt : "2023-08-06T06:34:25.382Z"
/// status : "PUBLISHED"
/// sort : 0
/// top : false
/// createdAt : "2023-07-06T07:07:24.886Z"
/// updatedAt : "2023-07-06T07:07:24.886Z"
/// creatorId : null
/// updatorId : null
/// imgUrl : null
/// deletedAt : null

class SurveyList {
  SurveyList({
    num? id,
    num? merchantId,
    String? name,
    dynamic description,
    String? startAt,
    String? endAt,
    String? status,
    num? sort,
    bool? top,
    String? createdAt,
    String? updatedAt,
    dynamic creatorId,
    dynamic updatorId,
    dynamic imgUrl,
    dynamic deletedAt,
  }) {
    _id = id;
    _merchantId = merchantId;
    _name = name;
    _description = description;
    _startAt = startAt;
    _endAt = endAt;
    _status = status;
    _sort = sort;
    _top = top;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _creatorId = creatorId;
    _updatorId = updatorId;
    _imgUrl = imgUrl;
    _deletedAt = deletedAt;
  }

  SurveyList.fromJson(dynamic json) {
    _id = json['id'];
    _merchantId = json['merchantId'];
    _name = json['name'];
    _description = json['description'];
    _startAt = json['startAt'];
    _endAt = json['endAt'];
    _status = json['status'];
    _sort = json['sort'];
    _top = json['top'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _creatorId = json['creatorId'];
    _updatorId = json['updatorId'];
    _imgUrl = json['imgUrl'];
    _deletedAt = json['deletedAt'];
  }
  num? _id;
  num? _merchantId;
  String? _name;
  dynamic _description;
  String? _startAt;
  String? _endAt;
  String? _status;
  num? _sort;
  bool? _top;
  String? _createdAt;
  String? _updatedAt;
  dynamic _creatorId;
  dynamic _updatorId;
  dynamic _imgUrl;
  dynamic _deletedAt;
  SurveyList copyWith({
    num? id,
    num? merchantId,
    String? name,
    dynamic description,
    String? startAt,
    String? endAt,
    String? status,
    num? sort,
    bool? top,
    String? createdAt,
    String? updatedAt,
    dynamic creatorId,
    dynamic updatorId,
    dynamic imgUrl,
    dynamic deletedAt,
  }) =>
      SurveyList(
        id: id ?? _id,
        merchantId: merchantId ?? _merchantId,
        name: name ?? _name,
        description: description ?? _description,
        startAt: startAt ?? _startAt,
        endAt: endAt ?? _endAt,
        status: status ?? _status,
        sort: sort ?? _sort,
        top: top ?? _top,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        creatorId: creatorId ?? _creatorId,
        updatorId: updatorId ?? _updatorId,
        imgUrl: imgUrl ?? _imgUrl,
        deletedAt: deletedAt ?? _deletedAt,
      );
  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get name => _name;
  dynamic get description => _description;
  String? get startAt => _startAt;
  String? get endAt => _endAt;
  String? get status => _status;
  num? get sort => _sort;
  bool? get top => _top;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get creatorId => _creatorId;
  dynamic get updatorId => _updatorId;
  dynamic get imgUrl => _imgUrl;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['merchantId'] = _merchantId;
    map['name'] = _name;
    map['description'] = _description;
    map['startAt'] = _startAt;
    map['endAt'] = _endAt;
    map['status'] = _status;
    map['sort'] = _sort;
    map['top'] = _top;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['creatorId'] = _creatorId;
    map['updatorId'] = _updatorId;
    map['imgUrl'] = _imgUrl;
    map['deletedAt'] = _deletedAt;
    return map;
  }
}
