import 'dart:convert';

/// id : 4
/// oldObjectId : "43sRkPFwij"
/// number : "016"
/// displayName : "Miss Chan"
/// avatar : {"url":"https://storage.macauscholar.com/scholar/d5e355789e9ebcb9389b744ad4bc537c5ab0ce626b50ac8bfc233aac25ff343779e844d3e39e685d05cc291400a0bbb739093ada13f06a220ceb2597d12da978.png"}
/// gender : "f"
/// phone : "15"
/// description : "◎九年英語課程(成人、中小學及應試課程如雅思課程等)教學經驗  \n◎澳洲悉尼大學英語語言學及法語學雙主修學士 \n◎曾為澳門某中小學英語科及歷史科老師 (英文班)  \n◎雅思IELTS全項8分"
/// recommend : true
/// strongPointSubject : ["語文","數學","英語"]
/// teachingDate : "2009-06-14T07:08:56.885Z"
/// createdAt : "2024-03-27T06:26:10.958Z"
/// updatedAt : "2024-06-14T08:37:19.652Z"

TeacherItem teacherItemFromJson(String str) =>
    TeacherItem.fromJson(json.decode(str));
String teacherItemToJson(TeacherItem data) => json.encode(data.toJson());

class TeacherItem {
  TeacherItem({
    num? id,
    String? oldObjectId,
    String? number,
    String? displayName,
    Avatar? avatar,
    String? gender,
    String? phone,
    String? description,
    bool? recommend,
    List<String>? strongPointSubject,
    List<String>? achievements,
    String? teachingDate,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _oldObjectId = oldObjectId;
    _number = number;
    _displayName = displayName;
    _avatar = avatar;
    _gender = gender;
    _phone = phone;
    _description = description;
    _recommend = recommend;
    _strongPointSubject = strongPointSubject;
    _achievements = achievements;
    _teachingDate = teachingDate;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  TeacherItem.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _number = json['number'];
    _displayName = json['displayName'];
    _avatar = json['avatar'] != null ? Avatar.fromJson(json['avatar']) : null;
    _gender = json['gender'];
    _phone = json['phone'];
    _description = json['description'];
    _recommend = json['recommend'];
    _strongPointSubject = json['strongPointSubject'] != null
        ? json['strongPointSubject'].cast<String>()
        : [];
    _achievements =
        json['achievements'] != null ? json['achievements'].cast<String>() : [];
    _teachingDate = json['teachingDate'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _oldObjectId;
  String? _number;
  String? _displayName;
  Avatar? _avatar;
  String? _gender;
  String? _phone;
  String? _description;
  bool? _recommend;
  List<String>? _strongPointSubject;
  List<String>? _achievements;
  String? _teachingDate;
  String? _createdAt;
  String? _updatedAt;
  TeacherItem copyWith({
    num? id,
    String? oldObjectId,
    String? number,
    String? displayName,
    Avatar? avatar,
    String? gender,
    String? phone,
    String? description,
    bool? recommend,
    List<String>? strongPointSubject,
    List<String>? achievements,
    String? teachingDate,
    String? createdAt,
    String? updatedAt,
  }) =>
      TeacherItem(
        id: id ?? _id,
        oldObjectId: oldObjectId ?? _oldObjectId,
        number: number ?? _number,
        displayName: displayName ?? _displayName,
        avatar: avatar ?? _avatar,
        gender: gender ?? _gender,
        phone: phone ?? _phone,
        description: description ?? _description,
        recommend: recommend ?? _recommend,
        strongPointSubject: strongPointSubject ?? _strongPointSubject,
        achievements: achievements ?? _achievements,
        teachingDate: teachingDate ?? _teachingDate,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get number => _number;
  String? get displayName => _displayName;
  Avatar? get avatar => _avatar;
  String? get gender => _gender;
  String? get phone => _phone;
  String? get description => _description;
  bool? get recommend => _recommend;
  List<String>? get strongPointSubject => _strongPointSubject;
  List<String>? get achievements => _achievements;
  String? get teachingDate => _teachingDate;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['number'] = _number;
    map['displayName'] = _displayName;
    if (_avatar != null) {
      map['avatar'] = _avatar?.toJson();
    }
    map['gender'] = _gender;
    map['phone'] = _phone;
    map['description'] = _description;
    map['recommend'] = _recommend;
    map['strongPointSubject'] = _strongPointSubject;
    map['achievements'] = _achievements;
    map['teachingDate'] = _teachingDate;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}

/// url : "https://storage.macauscholar.com/scholar/d5e355789e9ebcb9389b744ad4bc537c5ab0ce626b50ac8bfc233aac25ff343779e844d3e39e685d05cc291400a0bbb739093ada13f06a220ceb2597d12da978.png"

Avatar avatarFromJson(String str) => Avatar.fromJson(json.decode(str));
String avatarToJson(Avatar data) => json.encode(data.toJson());

class Avatar {
  Avatar({
    String? url,
  }) {
    _url = url;
  }

  Avatar.fromJson(dynamic json) {
    _url = json['url'];
  }
  String? _url;
  Avatar copyWith({
    String? url,
  }) =>
      Avatar(
        url: url ?? _url,
      );
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    return map;
  }
}
