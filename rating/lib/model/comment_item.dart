import 'dart:convert';

/// id : 12
/// isanonymous : false
/// date : "2024-07-04T13:59:40.000Z"
/// userId : "孙笑川"
/// userItem : {}
/// description : "不錯啊今天"
/// satisfied : null
/// label : null
/// createdAt : "2024-07-04T05:41:15.575Z"
/// files : []
/// targetId : 2
/// deleted : false
/// projectId : 1
/// relatedType : "student"
/// relatedId : "SS220005"
/// Score : [{"id":12,"userId":null,"score":0,"createdAt":"2024-07-04T05:41:15.575Z","deleted":false,"commentId":12}]
/// commentTags : [{"id":12,"commentId":12,"title":"老師點評","targetId":"teacher_rate"}]

CommentItem commentItemFromJson(String str) =>
    CommentItem.fromJson(json.decode(str));
String commentItemToJson(CommentItem data) => json.encode(data.toJson());

class CommentItem {
  CommentItem({
    num? id,
    bool? isanonymous,
    String? date,
    String? userId,
    dynamic userItem,
    String? description,
    dynamic satisfied,
    dynamic label,
    String? createdAt,
    List<dynamic>? files,
    num? targetId,
    bool? deleted,
    num? projectId,
    String? relatedType,
    String? relatedId,
    List<Score>? score,
    List<CommentTags>? commentTags,
  }) {
    _id = id;
    _isanonymous = isanonymous;
    _date = date;
    _userId = userId;
    _userItem = userItem;
    _description = description;
    _satisfied = satisfied;
    _label = label;
    _createdAt = createdAt;
    _files = files;
    _targetId = targetId;
    _deleted = deleted;
    _projectId = projectId;
    _relatedType = relatedType;
    _relatedId = relatedId;
    _score = score;
    _commentTags = commentTags;
  }

  CommentItem.fromJson(dynamic json) {
    _id = json['id'];
    _isanonymous = json['isanonymous'];
    _date = json['date'];
    _userId = json['userId'];
    _userItem = json['userItem'];
    _description = json['description'];
    _satisfied = json['satisfied'];
    _label = json['label'];
    _createdAt = json['createdAt'];
    if (json['files'] != null) {
      _files = [];
      // json['files'].forEach((v) {
      //   _files?.add(Dynamic.fromJson(v));
      // });
    }
    _targetId = json['targetId'];
    _deleted = json['deleted'];
    _projectId = json['projectId'];
    _relatedType = json['relatedType'];
    _relatedId = json['relatedId'];
    if (json['Score'] != null) {
      _score = [];
      json['Score'].forEach((v) {
        _score?.add(Score.fromJson(v));
      });
    }
    if (json['commentTags'] != null) {
      _commentTags = [];
      json['commentTags'].forEach((v) {
        _commentTags?.add(CommentTags.fromJson(v));
      });
    }
  }
  num? _id;
  bool? _isanonymous;
  String? _date;
  String? _userId;
  dynamic _userItem;
  String? _description;
  dynamic _satisfied;
  dynamic _label;
  String? _createdAt;
  List<dynamic>? _files;
  num? _targetId;
  bool? _deleted;
  num? _projectId;
  String? _relatedType;
  String? _relatedId;
  List<Score>? _score;
  List<CommentTags>? _commentTags;
  CommentItem copyWith({
    num? id,
    bool? isanonymous,
    String? date,
    String? userId,
    dynamic userItem,
    String? description,
    dynamic satisfied,
    dynamic label,
    String? createdAt,
    List<dynamic>? files,
    num? targetId,
    bool? deleted,
    num? projectId,
    String? relatedType,
    String? relatedId,
    List<Score>? score,
    List<CommentTags>? commentTags,
  }) =>
      CommentItem(
        id: id ?? _id,
        isanonymous: isanonymous ?? _isanonymous,
        date: date ?? _date,
        userId: userId ?? _userId,
        userItem: userItem ?? _userItem,
        description: description ?? _description,
        satisfied: satisfied ?? _satisfied,
        label: label ?? _label,
        createdAt: createdAt ?? _createdAt,
        files: files ?? _files,
        targetId: targetId ?? _targetId,
        deleted: deleted ?? _deleted,
        projectId: projectId ?? _projectId,
        relatedType: relatedType ?? _relatedType,
        relatedId: relatedId ?? _relatedId,
        score: score ?? _score,
        commentTags: commentTags ?? _commentTags,
      );
  num? get id => _id;
  bool? get isanonymous => _isanonymous;
  String? get date => _date;
  String? get userId => _userId;
  dynamic get userItem => _userItem;
  String? get description => _description;
  dynamic get satisfied => _satisfied;
  dynamic get label => _label;
  String? get createdAt => _createdAt;
  List<dynamic>? get files => _files;
  num? get targetId => _targetId;
  bool? get deleted => _deleted;
  num? get projectId => _projectId;
  String? get relatedType => _relatedType;
  String? get relatedId => _relatedId;
  List<Score>? get score => _score;
  List<CommentTags>? get commentTags => _commentTags;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['isanonymous'] = _isanonymous;
    map['date'] = _date;
    map['userId'] = _userId;
    map['userItem'] = _userItem;
    map['description'] = _description;
    map['satisfied'] = _satisfied;
    map['label'] = _label;
    map['createdAt'] = _createdAt;
    if (_files != null) {
      map['files'] = _files?.map((v) => v.toJson()).toList();
    }
    map['targetId'] = _targetId;
    map['deleted'] = _deleted;
    map['projectId'] = _projectId;
    map['relatedType'] = _relatedType;
    map['relatedId'] = _relatedId;
    if (_score != null) {
      map['Score'] = _score?.map((v) => v.toJson()).toList();
    }
    if (_commentTags != null) {
      map['commentTags'] = _commentTags?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 12
/// commentId : 12
/// title : "老師點評"
/// targetId : "teacher_rate"

CommentTags commentTagsFromJson(String str) =>
    CommentTags.fromJson(json.decode(str));
String commentTagsToJson(CommentTags data) => json.encode(data.toJson());

class CommentTags {
  CommentTags({
    num? id,
    num? commentId,
    String? title,
    String? targetId,
  }) {
    _id = id;
    _commentId = commentId;
    _title = title;
    _targetId = targetId;
  }

  CommentTags.fromJson(dynamic json) {
    _id = json['id'];
    _commentId = json['commentId'];
    _title = json['title'];
    _targetId = json['targetId'];
  }
  num? _id;
  num? _commentId;
  String? _title;
  String? _targetId;
  CommentTags copyWith({
    num? id,
    num? commentId,
    String? title,
    String? targetId,
  }) =>
      CommentTags(
        id: id ?? _id,
        commentId: commentId ?? _commentId,
        title: title ?? _title,
        targetId: targetId ?? _targetId,
      );
  num? get id => _id;
  num? get commentId => _commentId;
  String? get title => _title;
  String? get targetId => _targetId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['commentId'] = _commentId;
    map['title'] = _title;
    map['targetId'] = _targetId;
    return map;
  }
}

/// id : 12
/// userId : null
/// score : 0
/// createdAt : "2024-07-04T05:41:15.575Z"
/// deleted : false
/// commentId : 12

Score scoreFromJson(String str) => Score.fromJson(json.decode(str));
String scoreToJson(Score data) => json.encode(data.toJson());

class Score {
  Score({
    num? id,
    dynamic userId,
    num? score,
    String? createdAt,
    bool? deleted,
    num? commentId,
  }) {
    _id = id;
    _userId = userId;
    _score = score;
    _createdAt = createdAt;
    _deleted = deleted;
    _commentId = commentId;
  }

  Score.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _score = json['score'];
    _createdAt = json['createdAt'];
    _deleted = json['deleted'];
    _commentId = json['commentId'];
  }
  num? _id;
  dynamic _userId;
  num? _score;
  String? _createdAt;
  bool? _deleted;
  num? _commentId;
  Score copyWith({
    num? id,
    dynamic userId,
    num? score,
    String? createdAt,
    bool? deleted,
    num? commentId,
  }) =>
      Score(
        id: id ?? _id,
        userId: userId ?? _userId,
        score: score ?? _score,
        createdAt: createdAt ?? _createdAt,
        deleted: deleted ?? _deleted,
        commentId: commentId ?? _commentId,
      );
  num? get id => _id;
  dynamic get userId => _userId;
  num? get score => _score;
  String? get createdAt => _createdAt;
  bool? get deleted => _deleted;
  num? get commentId => _commentId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['score'] = _score;
    map['createdAt'] = _createdAt;
    map['deleted'] = _deleted;
    map['commentId'] = _commentId;
    return map;
  }
}
