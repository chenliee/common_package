import 'package:member/model/user_vip_grade_item.dart';

/// id : 143
/// projectId : 2
/// userId : 165
/// gradeId : 1
/// record : {"total_consumption":51100}
/// createdAt : "2023-11-03T03:02:10.325Z"
/// updatedAt : "2023-11-08T09:17:42.719Z"
/// grade : {"id":1,"gradeId":"fad445d2-87e2-4f4c-a70c-2ec211c3bcb9","gradeType":"member","order":0,"projectId":2,"gradeName":"銅盛","privileges":{"discount":10,"discount_desc":"10"},"description":"銅盛","guideTitle":"銅盛","upgradeCondition":{"total_consumption":0},"imgFileId":89,"isDelete":0,"config":{"background":"https://storage.dev.heyday-catering.com:20443/member/public/d2504993ca0fff74f83cf0c89a45f6d16fc48b96e5411ab94c41fc3b6fd2f9f6_upload_1692256038221.0.59687935601349.0.svg"},"createdAt":"2023-06-01T02:09:06.088Z","updatedAt":"2023-08-17T07:19:38.925Z","coverImg":"https://storage.dev.heyday-catering.com:20443/member/public/961188948ec922c015320e2b287c674e77658a470bf1a99c6e03ba55db5aa831_upload_1692255907194.0.23713502851191537.0.svg"}
/// nextGrade : {"id":2,"gradeId":"692f8eb7-aed0-47ec-bd9f-63722a959c7e","gradeType":"member","order":0,"projectId":2,"gradeName":"銀盛","privileges":{"discount":10,"discount_desc":"10"},"description":"銀盛","guideTitle":"銀盛","upgradeCondition":{"total_consumption":200000},"imgFileId":91,"isDelete":0,"config":{"background":"https://storage.dev.heyday-catering.com:20443/member/public/df408f769930b8d393bcf163af1335c6891ae1f68f1ec503892676b0b7fe1e08_upload_1692256485231.0.41292851840090306.0.svg"},"createdAt":"2023-06-01T02:12:57.328Z","updatedAt":"2023-08-17T07:19:44.138Z","coverImg":"https://storage.dev.heyday-catering.com:20443/member/public/7b28c9e39ab181ea8a37c21a88cd30458333231b5783a20784dd274cef06008f_upload_1692256462230.0.22198654780146598.0.svg"}

class UserVipGradeInfo {
  UserVipGradeInfo({
    num? id,
    num? projectId,
    num? userId,
    num? gradeId,
    Record? record,
    String? createdAt,
    String? updatedAt,
    UserVipGradeItem? grade,
    UserVipGradeItem? nextGrade,
  }) {
    _id = id;
    _projectId = projectId;
    _userId = userId;
    _gradeId = gradeId;
    _record = record;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _grade = grade;
    _nextGrade = nextGrade;
  }

  UserVipGradeInfo.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _userId = json['userId'];
    _gradeId = json['gradeId'];
    _record = json['record'] != null ? Record.fromJson(json['record']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _grade =
        json['grade'] != null ? UserVipGradeItem.fromJson(json['grade']) : null;
    _nextGrade = json['nextGrade'] != null
        ? UserVipGradeItem.fromJson(json['nextGrade'])
        : null;
  }
  num? _id;
  num? _projectId;
  num? _userId;
  num? _gradeId;
  Record? _record;
  String? _createdAt;
  String? _updatedAt;
  UserVipGradeItem? _grade;
  UserVipGradeItem? _nextGrade;
  UserVipGradeInfo copyWith({
    num? id,
    num? projectId,
    num? userId,
    num? gradeId,
    Record? record,
    String? createdAt,
    String? updatedAt,
    UserVipGradeItem? grade,
    UserVipGradeItem? nextGrade,
  }) =>
      UserVipGradeInfo(
        id: id ?? _id,
        projectId: projectId ?? _projectId,
        userId: userId ?? _userId,
        gradeId: gradeId ?? _gradeId,
        record: record ?? _record,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        grade: grade ?? _grade,
        nextGrade: nextGrade ?? _nextGrade,
      );
  num? get id => _id;
  num? get projectId => _projectId;
  num? get userId => _userId;
  num? get gradeId => _gradeId;
  Record? get record => _record;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  UserVipGradeItem? get grade => _grade;
  UserVipGradeItem? get nextGrade => _nextGrade;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['userId'] = _userId;
    map['gradeId'] = _gradeId;
    if (_record != null) {
      map['record'] = _record?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_grade != null) {
      map['grade'] = _grade?.toJson();
    }
    if (_nextGrade != null) {
      map['nextGrade'] = _nextGrade?.toJson();
    }
    return map;
  }
}

/// id : 2
/// gradeId : "692f8eb7-aed0-47ec-bd9f-63722a959c7e"
/// gradeType : "member"
/// order : 0
/// projectId : 2
/// gradeName : "銀盛"
/// privileges : {"discount":10,"discount_desc":"10"}
/// description : "銀盛"
/// guideTitle : "銀盛"
/// upgradeCondition : {"total_consumption":200000}
/// imgFileId : 91
/// isDelete : 0
/// config : {"background":"https://storage.dev.heyday-catering.com:20443/member/public/df408f769930b8d393bcf163af1335c6891ae1f68f1ec503892676b0b7fe1e08_upload_1692256485231.0.41292851840090306.0.svg"}
/// createdAt : "2023-06-01T02:12:57.328Z"
/// updatedAt : "2023-08-17T07:19:44.138Z"
/// coverImg : "https://storage.dev.heyday-catering.com:20443/member/public/7b28c9e39ab181ea8a37c21a88cd30458333231b5783a20784dd274cef06008f_upload_1692256462230.0.22198654780146598.0.svg"

/// background : "https://storage.dev.heyday-catering.com:20443/member/public/df408f769930b8d393bcf163af1335c6891ae1f68f1ec503892676b0b7fe1e08_upload_1692256485231.0.41292851840090306.0.svg"

/// background : "https://storage.dev.heyday-catering.com:20443/member/public/d2504993ca0fff74f83cf0c89a45f6d16fc48b96e5411ab94c41fc3b6fd2f9f6_upload_1692256038221.0.59687935601349.0.svg"

/// total_consumption : 51100

class Record {
  Record({
    num? totalConsumption,
  }) {
    _totalConsumption = totalConsumption;
  }

  Record.fromJson(dynamic json) {
    _totalConsumption = json['total_consumption'];
  }
  num? _totalConsumption;
  Record copyWith({
    num? totalConsumption,
  }) =>
      Record(
        totalConsumption: totalConsumption ?? _totalConsumption,
      );
  num? get totalConsumption => _totalConsumption;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_consumption'] = _totalConsumption;
    return map;
  }
}
