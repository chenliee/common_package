/// id : 26
/// addressId : "90b5243d-9d38-4a48-aebc-dc8c0778181c"
/// userId : 83
/// username : "開心"
/// mobile : "62222222"
/// sex : 0
/// mapType : "GOOGLE"
/// place : "香洲区利时大厦(中心路东)"
/// street : "广东省珠海市香洲区中心路"
/// detail : "301"
/// lat : "22.206163"
/// lng : "113.53814"
/// poi : null
/// isDefault : 0
/// isDelete : 0
/// projectId : 2
/// createdAt : "2023-11-03T06:10:13.083Z"
/// updatedAt : "2023-11-14T08:12:42.613Z"

class AddressItem {
  AddressItem({
    num? id,
    String? addressId,
    num? userId,
    String? username,
    String? mobile,
    num? sex,
    String? mapType,
    String? place,
    String? street,
    String? detail,
    String? lat,
    String? lng,
    dynamic poi,
    num? isDefault,
    num? isDelete,
    num? projectId,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _addressId = addressId;
    _userId = userId;
    _username = username;
    _mobile = mobile;
    _sex = sex;
    _mapType = mapType;
    _place = place;
    _street = street;
    _detail = detail;
    _lat = lat;
    _lng = lng;
    _poi = poi;
    _isDefault = isDefault;
    _isDelete = isDelete;
    _projectId = projectId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  AddressItem.fromJson(dynamic json) {
    _id = json['id'];
    _addressId = json['addressId'];
    _userId = json['userId'];
    _username = json['username'];
    _mobile = json['mobile'];
    _sex = json['sex'];
    _mapType = json['mapType'];
    _place = json['place'];
    _street = json['street'];
    _detail = json['detail'];
    _lat = json['lat'];
    _lng = json['lng'];
    _poi = json['poi'];
    _isDefault = json['isDefault'];
    _isDelete = json['isDelete'];
    _projectId = json['projectId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _addressId;
  num? _userId;
  String? _username;
  String? _mobile;
  num? _sex;
  String? _mapType;
  String? _place;
  String? _street;
  String? _detail;
  String? _lat;
  String? _lng;
  dynamic _poi;
  num? _isDefault;
  num? _isDelete;
  num? _projectId;
  String? _createdAt;
  String? _updatedAt;
  AddressItem copyWith({
    num? id,
    String? addressId,
    num? userId,
    String? username,
    String? mobile,
    num? sex,
    String? mapType,
    String? place,
    String? street,
    String? detail,
    String? lat,
    String? lng,
    dynamic poi,
    num? isDefault,
    num? isDelete,
    num? projectId,
    String? createdAt,
    String? updatedAt,
  }) =>
      AddressItem(
        id: id ?? _id,
        addressId: addressId ?? _addressId,
        userId: userId ?? _userId,
        username: username ?? _username,
        mobile: mobile ?? _mobile,
        sex: sex ?? _sex,
        mapType: mapType ?? _mapType,
        place: place ?? _place,
        street: street ?? _street,
        detail: detail ?? _detail,
        lat: lat ?? _lat,
        lng: lng ?? _lng,
        poi: poi ?? _poi,
        isDefault: isDefault ?? _isDefault,
        isDelete: isDelete ?? _isDelete,
        projectId: projectId ?? _projectId,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get addressId => _addressId;
  num? get userId => _userId;
  String? get username => _username;
  String? get mobile => _mobile;
  num? get sex => _sex;
  String? get mapType => _mapType;
  String? get place => _place;
  String? get street => _street;
  String? get detail => _detail;
  String? get lat => _lat;
  String? get lng => _lng;
  dynamic get poi => _poi;
  num? get isDefault => _isDefault;
  num? get isDelete => _isDelete;
  num? get projectId => _projectId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['addressId'] = _addressId;
    map['userId'] = _userId;
    map['username'] = _username;
    map['mobile'] = _mobile;
    map['sex'] = _sex;
    map['mapType'] = _mapType;
    map['place'] = _place;
    map['street'] = _street;
    map['detail'] = _detail;
    map['lat'] = _lat;
    map['lng'] = _lng;
    map['poi'] = _poi;
    map['isDefault'] = _isDefault;
    map['isDelete'] = _isDelete;
    map['projectId'] = _projectId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

  @override
  String toString() {
    return 'AddressItem{_id: $_id, _addressId: $_addressId, _userId: $_userId, _username: $_username, _mobile: $_mobile, _sex: $_sex, _mapType: $_mapType, _place: $_place, _street: $_street, _detail: $_detail, _lat: $_lat, _lng: $_lng, _poi: $_poi, _isDefault: $_isDefault, _isDelete: $_isDelete, _projectId: $_projectId, _createdAt: $_createdAt, _updatedAt: $_updatedAt}';
  }


}
