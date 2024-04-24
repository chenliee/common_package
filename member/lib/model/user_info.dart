/// id : 1
/// createAt : "2023-11-04T07:33:33.983Z"
/// updateAt : "2023-11-04T07:33:33.983Z"
/// userId : "eb1c0faf-4bee-4b12-811a-8c808acb6ff3"
/// merchantId : 4
/// username : "你的名字"
/// sex : 0
/// avatarFileId : 1
/// avatar : "https://xxx.com"
/// email : "xxx@xx.xx"
/// birthday : "2023-11-04"
/// habbit : "爱好1,爱好2,爱好3"
/// rules : ["member"]

class UserInfo {
  UserInfo({
    num? id,
    String? createAt,
    String? updateAt,
    String? userId,
    num? merchantId,
    String? username,
    num? sex,
    num? avatarFileId,
    String? avatar,
    String? email,
    String? birthday,
    String? habbit,
    List<String>? rules,
  }) {
    id = id;
    createAt = createAt;
    updateAt = updateAt;
    userId = userId;
    merchantId = merchantId;
    username = username;
    sex = sex;
    avatarFileId = avatarFileId;
    avatar = avatar;
    email = email;
    birthday = birthday;
    habbit = habbit;
    rules = rules;
  }

  UserInfo.fromJson(dynamic json) {
    id = json['id'];
    createAt = json['createdAt'];
    updateAt = json['updatedAt'];
    userId = json['userId'];
    merchantId = json['merchantId'];
    username = json['username'];
    sex = json['sex'];
    avatarFileId = json['avatarFileId'];
    avatar = json['avatar'];
    email = json['email'];
    birthday = json['birthday'];
    habbit = json['habbit'];
    rules = json['rules'] != null ? json['rules'].cast<String>() : [];
  }
  num? id;
  String? createAt;
  String? updateAt;
  String? userId;
  num? merchantId;
  String? username;
  num? sex;
  num? avatarFileId;
  String? avatar;
  String? email;
  String? birthday;
  String? habbit;
  List<String>? rules;

  UserInfo copyWith({
    num? id,
    String? createAt,
    String? updateAt,
    String? userId,
    num? merchantId,
    String? username,
    num? sex,
    num? avatarFileId,
    String? avatar,
    String? email,
    String? birthday,
    String? habbit,
    List<String>? rules,
  }) =>
      UserInfo(
        id: id ?? id,
        createAt: createAt ?? createAt,
        updateAt: updateAt ?? updateAt,
        userId: userId ?? userId,
        merchantId: merchantId ?? merchantId,
        username: username ?? username,
        sex: sex ?? sex,
        avatarFileId: avatarFileId ?? avatarFileId,
        avatar: avatar ?? avatar,
        email: email ?? email,
        birthday: birthday ?? birthday,
        habbit: habbit ?? habbit,
        rules: rules ?? rules,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createAt;
    map['updatedAt'] = updateAt;
    map['userId'] = userId;
    map['merchantId'] = merchantId;
    map['username'] = username;
    map['sex'] = sex;
    map['avatarFileId'] = avatarFileId;
    map['avatar'] = avatar;
    map['email'] = email;
    map['birthday'] = birthday;
    map['habbit'] = habbit;
    map['rules'] = rules;
    return map;
  }
}
