import 'dart:convert';

/// id : 215
/// projectId : 4
/// userId : 171
/// gradeId : 8
/// record : {"total_consumption":138120}
/// createdAt : "2024-03-01T01:27:27.008Z"
/// updatedAt : "2024-03-28T09:20:02.673Z"
/// grade : {"id":8,"gradeId":"89f34a7d-ef90-44a1-8a37-4aa6db8b5ff6","gradeType":"member","order":0,"projectId":4,"gradeName":"白銀會員","privileges":{"discount":9,"discount_desc":"打9折"},"description":"白銀","guideTitle":"白銀","upgradeCondition":{"total_consumption":0},"imgFileId":257,"isDelete":0,"config":{"icon":"https://storage.dev.heyday-catering.com:20443/saas-member/public/942511cd0e3632c7e3cc2cf80e9b7c83e5f330d22641dffe9f72a69d69c8e3fb_upload_1711957132700.0.6288469467583451.0.png"},"createdAt":"2024-02-29T06:05:32.302Z","updatedAt":"2024-04-01T07:38:55.956Z","coverImg":"https://storage.dev.heyday-catering.com:20443/saas-member/public/a5940254a9e557303194ee452e654ef0abba8d8a4ac9b40096d33e9802850228_upload_1711957024490.0.32602698446112766.0.png"}
/// nextGrade : {"id":9,"gradeId":"f7b62dbe-2117-4b7d-92c8-7e9bcf468813","gradeType":"member","order":0,"projectId":4,"gradeName":"黃金會員","privileges":{"discount":8,"discount_desc":"打8折"},"description":"黃金","guideTitle":"黃金","upgradeCondition":{"total_consumption":400000},"imgFileId":259,"isDelete":0,"config":{"icon":"https://storage.dev.heyday-catering.com:20443/saas-member/public/c6efd2af8a98298a2e6878c5a73637f598b1d8d90e4badd62b66cdfef46c48c7_upload_1711958095393.0.12765163838613058.0.png"},"createdAt":"2024-04-01T07:54:57.200Z","updatedAt":"2024-04-01T07:54:57.200Z","coverImg":"https://storage.dev.heyday-catering.com:20443/saas-member/public/67787c10658fecd9715f2a6824e872d5c2e3017dca6bab08b4e5d0e9538c68c1_upload_1711958078856.0.9634748294896776.0.png"}
/// grades : [{"id":8,"gradeId":"89f34a7d-ef90-44a1-8a37-4aa6db8b5ff6","gradeType":"member","order":0,"projectId":4,"gradeName":"白銀會員","privileges":{"discount":9,"discount_desc":"打9折"},"description":"白銀","guideTitle":"白銀","upgradeCondition":{"total_consumption":0},"imgFileId":257,"isDelete":0,"config":{"icon":"https://storage.dev.heyday-catering.com:20443/saas-member/public/942511cd0e3632c7e3cc2cf80e9b7c83e5f330d22641dffe9f72a69d69c8e3fb_upload_1711957132700.0.6288469467583451.0.png"},"createdAt":"2024-02-29T06:05:32.302Z","updatedAt":"2024-04-01T07:38:55.956Z","coverImg":"https://storage.dev.heyday-catering.com:20443/saas-member/public/a5940254a9e557303194ee452e654ef0abba8d8a4ac9b40096d33e9802850228_upload_1711957024490.0.32602698446112766.0.png"},{"id":9,"gradeId":"f7b62dbe-2117-4b7d-92c8-7e9bcf468813","gradeType":"member","order":0,"projectId":4,"gradeName":"黃金會員","privileges":{"discount":8,"discount_desc":"打8折"},"description":"黃金","guideTitle":"黃金","upgradeCondition":{"total_consumption":400000},"imgFileId":259,"isDelete":0,"config":{"icon":"https://storage.dev.heyday-catering.com:20443/saas-member/public/c6efd2af8a98298a2e6878c5a73637f598b1d8d90e4badd62b66cdfef46c48c7_upload_1711958095393.0.12765163838613058.0.png"},"createdAt":"2024-04-01T07:54:57.200Z","updatedAt":"2024-04-01T07:54:57.200Z","coverImg":"https://storage.dev.heyday-catering.com:20443/saas-member/public/67787c10658fecd9715f2a6824e872d5c2e3017dca6bab08b4e5d0e9538c68c1_upload_1711958078856.0.9634748294896776.0.png"}]

UserGradeInfo userGradeInfoFromJson(String str) =>
    UserGradeInfo.fromJson(json.decode(str));
String userGradeInfoToJson(UserGradeInfo data) => json.encode(data.toJson());

class UserGradeInfo {
  UserGradeInfo({
    num? id,
    num? projectId,
    num? userId,
    num? gradeId,
    Record? record,
    String? createdAt,
    String? updatedAt,
    Grade? grade,
    Grade? nextGrade,
    List<Grade>? grades,
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
    _grades = grades;
  }

  UserGradeInfo.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _userId = json['userId'];
    _gradeId = json['gradeId'];
    _record = json['record'] != null ? Record.fromJson(json['record']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _grade = json['grade'] != null ? Grade.fromJson(json['grade']) : null;
    _nextGrade =
        json['nextGrade'] != null ? Grade.fromJson(json['nextGrade']) : null;
    if (json['grades'] != null) {
      _grades = [];
      json['grades'].forEach((v) {
        _grades?.add(Grade.fromJson(v));
      });
    }
  }
  num? _id;
  num? _projectId;
  num? _userId;
  num? _gradeId;
  Record? _record;
  String? _createdAt;
  String? _updatedAt;
  Grade? _grade;
  Grade? _nextGrade;
  List<Grade>? _grades;
  UserGradeInfo copyWith({
    num? id,
    num? projectId,
    num? userId,
    num? gradeId,
    Record? record,
    String? createdAt,
    String? updatedAt,
    Grade? grade,
    Grade? nextGrade,
    List<Grade>? grades,
  }) =>
      UserGradeInfo(
        id: id ?? _id,
        projectId: projectId ?? _projectId,
        userId: userId ?? _userId,
        gradeId: gradeId ?? _gradeId,
        record: record ?? _record,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        grade: grade ?? _grade,
        nextGrade: nextGrade ?? _nextGrade,
        grades: grades ?? _grades,
      );
  num? get id => _id;
  num? get projectId => _projectId;
  num? get userId => _userId;
  num? get gradeId => _gradeId;
  Record? get record => _record;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Grade? get grade => _grade;
  Grade? get nextGrade => _nextGrade;
  List<Grade>? get grades => _grades;

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
    if (_grades != null) {
      map['grades'] = _grades?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// icon : "https://storage.dev.heyday-catering.com:20443/saas-member/public/942511cd0e3632c7e3cc2cf80e9b7c83e5f330d22641dffe9f72a69d69c8e3fb_upload_1711957132700.0.6288469467583451.0.png"

Config configFromJson(String str) => Config.fromJson(json.decode(str));
String configToJson(Config data) => json.encode(data.toJson());

class Config {
  Config({
    String? icon,
    String? background,
    List<String>? notShowAct,
  }) {
    _icon = icon;
    _background = background;
    _notShowAct = notShowAct;
  }

  Config.fromJson(dynamic json) {
    _icon = json['icon'];
    _background = json['background'];
    _notShowAct =
        json['notShowAct'] != null ? json['notShowAct'].cast<String>() : [];
  }

  String? _icon;
  String? _background;
  List<String>? _notShowAct;
  Config copyWith({
    String? icon,
    String? background,
    List<String>? notShowAct,
  }) =>
      Config(
        icon: icon ?? _icon,
        background: background ?? _background,
        notShowAct: _notShowAct ?? _notShowAct,
      );
  String? get icon => _icon;
  String? get background => _background;
  List<String>? get notShowAct => _notShowAct;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['icon'] = _icon;
    map['background'] = _background;
    map['notShowAct'] = _notShowAct;
    return map;
  }
}

/// total_consumption : 0

UpgradeCondition upgradeConditionFromJson(String str) =>
    UpgradeCondition.fromJson(json.decode(str));
String upgradeConditionToJson(UpgradeCondition data) =>
    json.encode(data.toJson());

class UpgradeCondition {
  UpgradeCondition({
    num? totalConsumption,
  }) {
    _totalConsumption = totalConsumption;
  }

  UpgradeCondition.fromJson(dynamic json) {
    _totalConsumption = json['total_consumption'];
  }
  num? _totalConsumption;
  UpgradeCondition copyWith({
    num? totalConsumption,
  }) =>
      UpgradeCondition(
        totalConsumption: totalConsumption ?? _totalConsumption,
      );
  num? get totalConsumption => _totalConsumption;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_consumption'] = _totalConsumption;
    return map;
  }
}

/// discount : 9
/// discount_desc : "打9折"

Privileges privilegesFromJson(String str) =>
    Privileges.fromJson(json.decode(str));
String privilegesToJson(Privileges data) => json.encode(data.toJson());

class Privileges {
  Privileges({
    num? discount,
    String? discountDesc,
  }) {
    _discount = discount;
    _discountDesc = discountDesc;
  }

  Privileges.fromJson(dynamic json) {
    _discount = json['discount'];
    _discountDesc = json['discount_desc'];
  }
  num? _discount;
  String? _discountDesc;
  Privileges copyWith({
    num? discount,
    String? discountDesc,
  }) =>
      Privileges(
        discount: discount ?? _discount,
        discountDesc: discountDesc ?? _discountDesc,
      );
  num? get discount => _discount;
  String? get discountDesc => _discountDesc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['discount'] = _discount;
    map['discount_desc'] = _discountDesc;
    return map;
  }
}

/// id : 8
/// gradeId : "89f34a7d-ef90-44a1-8a37-4aa6db8b5ff6"
/// gradeType : "member"
/// order : 0
/// projectId : 4
/// gradeName : "白銀會員"
/// privileges : {"discount":9,"discount_desc":"打9折"}
/// description : "白銀"
/// guideTitle : "白銀"
/// upgradeCondition : {"total_consumption":0}
/// imgFileId : 257
/// isDelete : 0
/// config : {"icon":"https://storage.dev.heyday-catering.com:20443/saas-member/public/942511cd0e3632c7e3cc2cf80e9b7c83e5f330d22641dffe9f72a69d69c8e3fb_upload_1711957132700.0.6288469467583451.0.png"}
/// createdAt : "2024-02-29T06:05:32.302Z"
/// updatedAt : "2024-04-01T07:38:55.956Z"
/// coverImg : "https://storage.dev.heyday-catering.com:20443/saas-member/public/a5940254a9e557303194ee452e654ef0abba8d8a4ac9b40096d33e9802850228_upload_1711957024490.0.32602698446112766.0.png"

Grade gradeFromJson(String str) => Grade.fromJson(json.decode(str));
String gradeToJson(Grade data) => json.encode(data.toJson());

class Grade {
  Grade({
    num? id,
    String? gradeId,
    String? gradeType,
    num? order,
    num? projectId,
    String? gradeName,
    Privileges? privileges,
    String? description,
    String? guideTitle,
    UpgradeCondition? upgradeCondition,
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


  @override
  String toString() {
    return 'Grade{_gradeId: $_gradeId, _gradeName: $_gradeName}';
  }

  Grade.fromJson(dynamic json) {
    _id = json['id'];
    _gradeId = json['gradeId'];
    _gradeType = json['gradeType'];
    _order = json['order'];
    _projectId = json['projectId'];
    _gradeName = json['gradeName'];
    _privileges = json['privileges'] != null
        ? Privileges.fromJson(json['privileges'])
        : null;
    _description = json['description'];
    _guideTitle = json['guideTitle'];
    _upgradeCondition = json['upgradeCondition'] != null
        ? UpgradeCondition.fromJson(json['upgradeCondition'])
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
  UpgradeCondition? _upgradeCondition;
  num? _imgFileId;
  num? _isDelete;
  Config? _config;
  String? _createdAt;
  String? _updatedAt;
  String? _coverImg;
  Grade copyWith({
    num? id,
    String? gradeId,
    String? gradeType,
    num? order,
    num? projectId,
    String? gradeName,
    Privileges? privileges,
    String? description,
    String? guideTitle,
    UpgradeCondition? upgradeCondition,
    num? imgFileId,
    num? isDelete,
    Config? config,
    String? createdAt,
    String? updatedAt,
    String? coverImg,
  }) =>
      Grade(
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
  UpgradeCondition? get upgradeCondition => _upgradeCondition;
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
    if (_privileges != null) {
      map['privileges'] = _privileges?.toJson();
    }
    map['description'] = _description;
    map['guideTitle'] = _guideTitle;
    if (_upgradeCondition != null) {
      map['upgradeCondition'] = _upgradeCondition?.toJson();
    }
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Grade &&
          runtimeType == other.runtimeType &&
          _id == other._id &&
          _gradeName == other._gradeName;

  @override
  int get hashCode => _id.hashCode ^ _gradeName.hashCode;
}

/// total_consumption : 138120

Record recordFromJson(String str) => Record.fromJson(json.decode(str));
String recordToJson(Record data) => json.encode(data.toJson());

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
