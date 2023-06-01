class UserInfo {
  int? id;
  String? createAt;
  String? updateAt;
  String? userId;
  int? merchantId;
  String? username;
  String? mobile;
  int? sex;
  String? avatar;
  String? email;
  String? birthday;
  String? habbit;

  UserInfo({
    this.id,
    this.createAt,
    this.updateAt,
    this.userId,
    this.merchantId,
    this.username,
    this.mobile,
    this.sex,
    this.avatar,
    this.email,
    this.birthday,
    this.habbit,
  });

  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createAt = json['createAt'];
    updateAt = json['updateAt'];
    userId = json['userId'];
    merchantId = json['merchantId'];
    username = json['username'];
    mobile = json['mobile'];
    sex = json['sex'];
    avatar = json['avatar'];
    email = json['email'];
    birthday = json['birthday'];
    habbit = json['habbit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['createAt'] = createAt;
    data['updateAt'] = updateAt;
    data['userId'] = userId;
    data['merchantId'] = merchantId;
    data['username'] = username;
    data['mobile'] = mobile;
    data['sex'] = sex;
    data['avatar'] = avatar;
    data['email'] = email;
    data['birthday'] = birthday;
    data['habbit'] = habbit;
    return data;
  }
}
