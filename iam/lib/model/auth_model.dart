/// uid : "string"
/// mid : "string"
/// username : "string"
/// token : "string"

class AuthModel {
  AuthModel({
      String? uid, 
      String? mid, 
      String? username, 
      String? token,}){
    _uid = uid;
    _mid = mid;
    _username = username;
    _token = token;
}

  AuthModel.fromJson(dynamic json) {
    _uid = json['uid'];
    _mid = json['mid'];
    _username = json['username'];
    _token = json['token'];
  }
  String? _uid;
  String? _mid;
  String? _username;
  String? _token;
AuthModel copyWith({  String? uid,
  String? mid,
  String? username,
  String? token,
}) => AuthModel(  uid: uid ?? _uid,
  mid: mid ?? _mid,
  username: username ?? _username,
  token: token ?? _token,
);
  String? get uid => _uid;
  String? get mid => _mid;
  String? get username => _username;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uid'] = _uid;
    map['mid'] = _mid;
    map['username'] = _username;
    map['token'] = _token;
    return map;
  }

}