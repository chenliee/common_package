/// id : 1
/// gradeId : "fad445d2-87e2-4f4c-a70c-2ec211c3bcb9"
/// projectId : 2
/// gradeName : "普通會員"
/// privileges : "{\"discount\":10,\"discount_desc\":\"10\"}"
/// description : "消費升級"
/// guideTitle : "消費人群專屬"
/// upgradeCondition : "{\"total_consumption\":0}"
/// imgFileId : 1
/// isDelete : 0
/// createdAt : "2023-06-01T02:09:06.088Z"
/// updatedAt : "2023-06-01T02:09:06.088Z"
/// coverImg : "https://storage.dev.heyday-catering.com:20443/member/public/6121700a4c50ccd5e3f46c76ef9bf5c7084bd33444214aba5d2d21016d220f92_upload_1685585313893.0.8199443340887222.0.png"

class UserVipGradeItem {
  UserVipGradeItem({
      num? id, 
      String? gradeId, 
      num? projectId, 
      String? gradeName, 
      String? privileges, 
      String? description, 
      String? guideTitle, 
      String? upgradeCondition, 
      num? imgFileId, 
      num? isDelete, 
      String? createdAt, 
      String? updatedAt, 
      String? coverImg,}){
    _id = id;
    _gradeId = gradeId;
    _projectId = projectId;
    _gradeName = gradeName;
    _privileges = privileges;
    _description = description;
    _guideTitle = guideTitle;
    _upgradeCondition = upgradeCondition;
    _imgFileId = imgFileId;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _coverImg = coverImg;
}

  UserVipGradeItem.fromJson(dynamic json) {
    _id = json['id'];
    _gradeId = json['gradeId'];
    _projectId = json['projectId'];
    _gradeName = json['gradeName'];
    _privileges = json['privileges'];
    _description = json['description'];
    _guideTitle = json['guideTitle'];
    _upgradeCondition = json['upgradeCondition'];
    _imgFileId = json['imgFileId'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _coverImg = json['coverImg'];
  }
  num? _id;
  String? _gradeId;
  num? _projectId;
  String? _gradeName;
  String? _privileges;
  String? _description;
  String? _guideTitle;
  String? _upgradeCondition;
  num? _imgFileId;
  num? _isDelete;
  String? _createdAt;
  String? _updatedAt;
  String? _coverImg;
UserVipGradeItem copyWith({  num? id,
  String? gradeId,
  num? projectId,
  String? gradeName,
  String? privileges,
  String? description,
  String? guideTitle,
  String? upgradeCondition,
  num? imgFileId,
  num? isDelete,
  String? createdAt,
  String? updatedAt,
  String? coverImg,
}) => UserVipGradeItem(  id: id ?? _id,
  gradeId: gradeId ?? _gradeId,
  projectId: projectId ?? _projectId,
  gradeName: gradeName ?? _gradeName,
  privileges: privileges ?? _privileges,
  description: description ?? _description,
  guideTitle: guideTitle ?? _guideTitle,
  upgradeCondition: upgradeCondition ?? _upgradeCondition,
  imgFileId: imgFileId ?? _imgFileId,
  isDelete: isDelete ?? _isDelete,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  coverImg: coverImg ?? _coverImg,
);
  num? get id => _id;
  String? get gradeId => _gradeId;
  num? get projectId => _projectId;
  String? get gradeName => _gradeName;
  String? get privileges => _privileges;
  String? get description => _description;
  String? get guideTitle => _guideTitle;
  String? get upgradeCondition => _upgradeCondition;
  num? get imgFileId => _imgFileId;
  num? get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get coverImg => _coverImg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['gradeId'] = _gradeId;
    map['projectId'] = _projectId;
    map['gradeName'] = _gradeName;
    map['privileges'] = _privileges;
    map['description'] = _description;
    map['guideTitle'] = _guideTitle;
    map['upgradeCondition'] = _upgradeCondition;
    map['imgFileId'] = _imgFileId;
    map['isDelete'] = _isDelete;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['coverImg'] = _coverImg;
    return map;
  }

}