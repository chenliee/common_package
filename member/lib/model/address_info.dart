class AddressInfo {
  int? id;
  String? createAt;
  String? updateAt;
  int? userId;
  String? username;
  String? mobile;
  int? sex;
  String? mapType;
  String? place;
  String? street;
  String? detail;
  String? latlng;
  int? isDefault;
  int? isDelete;
  int? projectId;

  AddressInfo({
    this.id,
    this.createAt,
    this.updateAt,
    this.userId,
    this.username,
    this.mobile,
    this.sex,
    this.mapType,
    this.place,
    this.street,
    this.detail,
    this.latlng,
    this.isDefault,
    this.isDelete,
    this.projectId,
  });

  AddressInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createAt = json['createAt'];
    updateAt = json['updateAt'];
    userId = json['userId'];
    username = json['username'];
    mobile = json['mobile'];
    sex = json['sex'];
    mapType = json['mapType'];
    place = json['place'];
    street = json['street'];
    detail = json['detail'];
    latlng = json['latlng'];
    isDefault = json['isDefault'];
    isDelete = json['isDelete'];
    projectId = json['projectId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['createAt'] = createAt;
    data['updateAt'] = updateAt;
    data['userId'] = userId;
    data['username'] = username;
    data['mobile'] = mobile;
    data['sex'] = sex;
    data['mapType'] = mapType;
    data['place'] = place;
    data['street'] = street;
    data['detail'] = detail;
    data['latlng'] = latlng;
    data['isDefault'] = isDefault;
    data['isDelete'] = isDelete;
    data['projectId'] = projectId;
    return data;
  }
}
