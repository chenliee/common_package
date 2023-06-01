import 'package:member/member.dart';

class UserVipGradeInfo {
  int? id;
  String? createAt;
  String? updateAt;
  int? projectId;
  int? userId;
  String? gradeId;
  String? record;
  UserVipGradeItem? grade;
  UserVipGradeItem? nextGrade;

  UserVipGradeInfo({
    this.id,
    this.createAt,
    this.updateAt,
    this.projectId,
    this.userId,
    this.gradeId,
    this.record,
    this.grade,
    this.nextGrade,
  });

  UserVipGradeInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createAt = json['createAt'];
    updateAt = json['updateAt'];
    projectId = json['projectId'];
    userId = json['userId'];
    gradeId = json['gradeId'];
    record = json['record'];
    grade =
        json['Grade'] != null ? UserVipGradeItem.fromJson(json['Grade']) : null;
    nextGrade = json['nextGrade'] != null
        ? UserVipGradeItem.fromJson(json['nextGrade'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['createAt'] = createAt;
    data['updateAt'] = updateAt;
    data['projectId'] = projectId;
    data['userId'] = userId;
    data['gradeId'] = gradeId;
    data['record'] = record;
    if (grade != null) {
      data['Grade'] = grade!.toJson();
    }
    if (nextGrade != null) {
      data['nextGrade'] = nextGrade!.toJson();
    }
    return data;
  }
}
