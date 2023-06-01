/// id : 0
/// name : "string"
/// addTime : "string"
/// imgUrl : "string"
/// endTime : "string"
/// status : "string"
/// cost : 0
/// employUrl : "string"
/// qrcode : "string"
/// desc : "string"

class UserGroupItem {
  UserGroupItem({
    num? id,
    String? name,
    String? addTime,
    String? imgUrl,
    String? endTime,
    String? status,
    num? cost,
    String? employUrl,
    String? qrcode,
    String? desc,
  }) {
    _id = id;
    _name = name;
    _addTime = addTime;
    _imgUrl = imgUrl;
    _endTime = endTime;
    _status = status;
    _cost = cost;
    _employUrl = employUrl;
    _qrcode = qrcode;
    _desc = desc;
  }

  UserGroupItem.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _addTime = json['addTime'];
    _imgUrl = json['imgUrl'];
    _endTime = json['endTime'];
    _status = json['status'];
    _cost = json['cost'];
    _employUrl = json['employUrl'] ?? '';
    _qrcode = json['qrcode'] ?? '';
    _desc = json['desc'] ?? '';
  }

  num? _id;
  String? _name;
  String? _addTime;
  String? _imgUrl;
  String? _endTime;
  String? _status;
  num? _cost;
  String? _employUrl;
  String? _qrcode;
  String? _desc;

  UserGroupItem copyWith({
    num? id,
    String? name,
    String? addTime,
    String? imgUrl,
    String? endTime,
    String? status,
    num? cost,
    String? employUrl,
    String? qrcode,
    String? desc,
  }) =>
      UserGroupItem(
        id: id ?? _id,
        name: name ?? _name,
        addTime: addTime ?? _addTime,
        imgUrl: imgUrl ?? _imgUrl,
        endTime: endTime ?? _endTime,
        status: status ?? _status,
        cost: cost ?? _cost,
        employUrl: employUrl ?? _employUrl,
        qrcode: qrcode ?? _qrcode,
        desc: desc ?? _desc,
      );

  num? get id => _id;
  String? get name => _name;
  String? get addTime => _addTime;
  String? get imgUrl => _imgUrl;
  String? get endTime => _endTime;
  String? get status => _status;
  num? get cost => _cost;
  String? get employUrl => _employUrl;
  String? get qrcode => _qrcode;
  String? get desc => _desc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['addTime'] = _addTime;
    map['imgUrl'] = _imgUrl;
    map['endTime'] = _endTime;
    map['status'] = _status;
    map['cost'] = _cost;
    map['employUrl'] = _employUrl;
    map['qrcode'] = _qrcode;
    map['desc'] = _desc;
    return map;
  }
}
