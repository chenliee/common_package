import 'package:member/model/user_grade_info.dart';
import 'package:member/model/user_vip_info.dart';

/// id : 1
/// gradeId : "fad445d2-87e2-4f4c-a70c-2ec211c3bcb9"
/// gradeType : "member"
/// order : 0
/// projectId : 2
/// gradeName : "銅盛"
/// privileges : "{\"discount\":10,\"discount_desc\":\"10\"}"
/// description : "銅盛"
/// guideTitle : "銅盛"
/// upgradeCondition : "{\"total_consumption\":0}"
/// imgFileId : 89
/// isDelete : 0
/// config : {"background":"https://storage.dev.heyday-catering.com:20443/member/public/d2504993ca0fff74f83cf0c89a45f6d16fc48b96e5411ab94c41fc3b6fd2f9f6_upload_1692256038221.0.59687935601349.0.svg"}
/// createdAt : "2023-06-01T02:09:06.088Z"
/// updatedAt : "2023-08-17T07:19:38.925Z"
/// coverImg : "https://storage.dev.heyday-catering.com:20443/member/public/961188948ec922c015320e2b287c674e77658a470bf1a99c6e03ba55db5aa831_upload_1692255907194.0.23713502851191537.0.svg"

class UserVipGradeItem {
  UserVipGradeItem({
    num? id,
    String? gradeId,
    String? gradeType,
    num? order,
    num? projectId,
    String? gradeName,
    Privileges? privileges,
    String? description,
    String? guideTitle,
    Record? upgradeCondition,
    num? imgFileId,
    num? isDelete,
    Config? config,
    String? createdAt,
    String? updatedAt,
    String? coverImg,
  }) {
    _id = id;
    _gradeId = gradeId;
    _gradeType = gradeType;
    _order = order;
    _projectId = projectId;
    _gradeName = gradeName;
    _privileges = privileges;
    _description = description;
    _guideTitle = guideTitle;
    _upgradeCondition = upgradeCondition;
    _imgFileId = imgFileId;
    _isDelete = isDelete;
    _config = config;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _coverImg = coverImg;
  }

  UserVipGradeItem.fromJson(dynamic json) {
    _id = json['id'];
    _gradeId = json['gradeId'];
    _gradeType = json['gradeType'];
    _order = json['order'];
    _projectId = json['projectId'];
    _gradeName = json['gradeName'];
    _privileges = Privileges.fromJson(json['privileges']);
    _description = json['description'];
    _guideTitle = json['guideTitle'];
    _upgradeCondition = json['upgradeCondition'] != null
        ? Record.fromJson(json['upgradeCondition'])
        : null;
    _imgFileId = json['imgFileId'];
    _isDelete = json['isDelete'];
    _config = json['config'] != null ? Config.fromJson(json['config']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _coverImg = json['coverImg'];
  }
  num? _id;
  String? _gradeId;
  String? _gradeType;
  num? _order;
  num? _projectId;
  String? _gradeName;
  Privileges? _privileges;
  String? _description;
  String? _guideTitle;
  Record? _upgradeCondition;
  num? _imgFileId;
  num? _isDelete;
  Config? _config;
  String? _createdAt;
  String? _updatedAt;
  String? _coverImg;
  UserVipGradeItem copyWith({
    num? id,
    String? gradeId,
    String? gradeType,
    num? order,
    num? projectId,
    String? gradeName,
    Privileges? privileges,
    String? description,
    String? guideTitle,
    Record? upgradeCondition,
    num? imgFileId,
    num? isDelete,
    Config? config,
    String? createdAt,
    String? updatedAt,
    String? coverImg,
  }) =>
      UserVipGradeItem(
        id: id ?? _id,
        gradeId: gradeId ?? _gradeId,
        gradeType: gradeType ?? _gradeType,
        order: order ?? _order,
        projectId: projectId ?? _projectId,
        gradeName: gradeName ?? _gradeName,
        privileges: privileges ?? _privileges,
        description: description ?? _description,
        guideTitle: guideTitle ?? _guideTitle,
        upgradeCondition: upgradeCondition ?? _upgradeCondition,
        imgFileId: imgFileId ?? _imgFileId,
        isDelete: isDelete ?? _isDelete,
        config: config ?? _config,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        coverImg: coverImg ?? _coverImg,
      );
  num? get id => _id;
  String? get gradeId => _gradeId;
  String? get gradeType => _gradeType;
  num? get order => _order;
  num? get projectId => _projectId;
  String? get gradeName => _gradeName;
  Privileges? get privileges => _privileges;
  String? get description => _description;
  String? get guideTitle => _guideTitle;
  Record? get upgradeCondition => _upgradeCondition;
  num? get imgFileId => _imgFileId;
  num? get isDelete => _isDelete;
  Config? get config => _config;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get coverImg => _coverImg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['gradeId'] = _gradeId;
    map['gradeType'] = _gradeType;
    map['order'] = _order;
    map['projectId'] = _projectId;
    map['gradeName'] = _gradeName;
    map['privileges'] = _privileges?.toJson();
    map['description'] = _description;
    map['guideTitle'] = _guideTitle;
    map['upgradeCondition'] = _upgradeCondition?.toJson();
    map['imgFileId'] = _imgFileId;
    map['isDelete'] = _isDelete;
    if (_config != null) {
      map['config'] = _config?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['coverImg'] = _coverImg;
    return map;
  }
}

/// background : "https://storage.dev.heyday-catering.com:20443/member/public/d2504993ca0fff74f83cf0c89a45f6d16fc48b96e5411ab94c41fc3b6fd2f9f6_upload_1692256038221.0.59687935601349.0.svg"

class Config {
  Config({
    String? background,
  }) {
    _background = background;
  }

  Config.fromJson(dynamic json) {
    _background = json['background'];
  }
  String? _background;
  Config copyWith({
    String? background,
  }) =>
      Config(
        background: background ?? _background,
      );
  String? get background => _background;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['background'] = _background;
    return map;
  }
}
