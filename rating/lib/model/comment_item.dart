/// id : 1
/// isanonymous : false
/// userId : "孙笑川"
/// description : "好评好评"
/// satisfied : true
/// label : "['味道很棒','服务很好']"
/// createdAt : "2023-05-29T03:16:02.866Z"
/// files : [{"url":"https://storage.dev.macauscholar.com:20443/crop/e919d80c30b7687d5b453260e2bd6362ae4ca11ff0ad3f435fed68490726ec4c_upload_1685330226236.0.40537613251542326.0.png","mime":"image/png","name":"xmmzpc4.png","size":"199339","hash":"e919d80c30b7687d5b453260e2bd6362ae4ca11ff0ad3f435fed68490726ec4c"},{"url":"https://storage.dev.macauscholar.com:20443/crop/00fee26d7daffa358956e7f20c9b726027555e77d58a714ab4224376c96c7fac_upload_1685330232459.0.2640993249370349.0.png","mime":"image/png","name":"xmmzpc5.png","size":"193299","hash":"00fee26d7daffa358956e7f20c9b726027555e77d58a714ab4224376c96c7fac"}]
/// targetId : 6
/// deleted : false
/// projectId : null
/// relatedType : "orther"
/// relatedId : "666666"
/// Score : [{"id":1,"userId":null,"score":5,"createdAt":"2023-05-29T03:16:02.866Z","deleted":false,"commentId":1}]

class CommentItem {
  CommentItem({
    num? id,
    bool? isanonymous,
    String? userId,
    String? description,
    bool? satisfied,
    String? label,
    String? createdAt,
    List<Files>? files,
    num? targetId,
    bool? deleted,
    dynamic projectId,
    String? relatedType,
    String? relatedId,
    List<Score>? score,
  }) {
    _id = id;
    _isanonymous = isanonymous;
    _userId = userId;
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
  }

  CommentItem.fromJson(dynamic json) {
    _id = json['id'];
    _isanonymous = json['isanonymous'];
    _userId = json['userId'];
    _description = json['description'];
    _satisfied = json['satisfied'];
    _label = json['label'];
    _createdAt = json['createdAt'];
    if (json['files'] != null) {
      _files = [];
      json['files'].forEach((v) {
        _files?.add(Files.fromJson(v));
      });
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
  }
  num? _id;
  bool? _isanonymous;
  String? _userId;
  String? _description;
  bool? _satisfied;
  String? _label;
  String? _createdAt;
  List<Files>? _files;
  num? _targetId;
  bool? _deleted;
  dynamic _projectId;
  String? _relatedType;
  String? _relatedId;
  List<Score>? _score;
  CommentItem copyWith({
    num? id,
    bool? isanonymous,
    String? userId,
    String? description,
    bool? satisfied,
    String? label,
    String? createdAt,
    List<Files>? files,
    num? targetId,
    bool? deleted,
    dynamic projectId,
    String? relatedType,
    String? relatedId,
    List<Score>? score,
  }) =>
      CommentItem(
        id: id ?? _id,
        isanonymous: isanonymous ?? _isanonymous,
        userId: userId ?? _userId,
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
      );
  num? get id => _id;
  bool? get isanonymous => _isanonymous;
  String? get userId => _userId;
  String? get description => _description;
  bool? get satisfied => _satisfied;
  String? get label => _label;
  String? get createdAt => _createdAt;
  List<Files>? get files => _files;
  num? get targetId => _targetId;
  bool? get deleted => _deleted;
  dynamic get projectId => _projectId;
  String? get relatedType => _relatedType;
  String? get relatedId => _relatedId;
  List<Score>? get score => _score;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['isanonymous'] = _isanonymous;
    map['userId'] = _userId;
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
    return map;
  }
}

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

class Files {
  Files({
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) {
    _url = url;
    _mime = mime;
    _name = name;
    _size = size;
    _hash = hash;
  }

  Files.fromJson(dynamic json) {
    _url = json['url'];
    _mime = json['mime'];
    _name = json['name'];
    _size = json['size'];
    _hash = json['hash'];
  }
  String? _url;
  String? _mime;
  String? _name;
  String? _size;
  String? _hash;
  Files copyWith({
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) =>
      Files(
        url: url ?? _url,
        mime: mime ?? _mime,
        name: name ?? _name,
        size: size ?? _size,
        hash: hash ?? _hash,
      );
  String? get url => _url;
  String? get mime => _mime;
  String? get name => _name;
  String? get size => _size;
  String? get hash => _hash;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['mime'] = _mime;
    map['name'] = _name;
    map['size'] = _size;
    map['hash'] = _hash;
    return map;
  }
}
