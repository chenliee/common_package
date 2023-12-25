/// id : 37
/// name : "飛機飛機飛機"
/// number : "e0008aa21edf49698d617c2b45dea4e7"
/// addTime : "2023-05-28 14:23:30"
/// cost : 100
/// imgUrl : "https://storage.dev.heyday-catering.com:20443/marketing/public/7a329e971b771e6b504a98f8d3c54dfb446c6f504322956ce1d7543b07b9ef98_upload_1685362801103.0.4781568727455978.0.jpg"
/// endTime : "2023-12-31 16:27:34"
/// status : "PAYED"
/// employUrl : "http://gateway.dev.heyday-catering.com:20443/api/merchant/heyday/project/heyday/groupAct/code/6136e3e2-3700-4bd9-939f-6babbc99c2c9"
/// code : "6136e3e2-3700-4bd9-939f-6babbc99c2c9"
/// desc : null
/// brandId : "dagu"
/// suitable : [{"shopId":"heyday-B01-dagu","shopNm":"澳大店"}]

class UserGroupItem {
  UserGroupItem({
      num? id, 
      String? name, 
      String? number, 
      String? addTime, 
      num? cost, 
      String? imgUrl, 
      String? endTime, 
      String? status, 
      String? employUrl, 
      String? code, 
      dynamic desc, 
      String? brandId, 
      List<Suitable>? suitable,}){
    _id = id;
    _name = name;
    _number = number;
    _addTime = addTime;
    _cost = cost;
    _imgUrl = imgUrl;
    _endTime = endTime;
    _status = status;
    _employUrl = employUrl;
    _code = code;
    _desc = desc;
    _brandId = brandId;
    _suitable = suitable;
}

  UserGroupItem.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _number = json['number'];
    _addTime = json['addTime'];
    _cost = json['cost'];
    _imgUrl = json['imgUrl'];
    _endTime = json['endTime'];
    _status = json['status'];
    _employUrl = json['employUrl'];
    _code = json['code'];
    _desc = json['desc'];
    _brandId = json['brandId'];
    if (json['suitable'] != null) {
      _suitable = [];
      json['suitable'].forEach((v) {
        _suitable?.add(Suitable.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  String? _number;
  String? _addTime;
  num? _cost;
  String? _imgUrl;
  String? _endTime;
  String? _status;
  String? _employUrl;
  String? _code;
  dynamic _desc;
  String? _brandId;
  List<Suitable>? _suitable;
UserGroupItem copyWith({  num? id,
  String? name,
  String? number,
  String? addTime,
  num? cost,
  String? imgUrl,
  String? endTime,
  String? status,
  String? employUrl,
  String? code,
  dynamic desc,
  String? brandId,
  List<Suitable>? suitable,
}) => UserGroupItem(  id: id ?? _id,
  name: name ?? _name,
  number: number ?? _number,
  addTime: addTime ?? _addTime,
  cost: cost ?? _cost,
  imgUrl: imgUrl ?? _imgUrl,
  endTime: endTime ?? _endTime,
  status: status ?? _status,
  employUrl: employUrl ?? _employUrl,
  code: code ?? _code,
  desc: desc ?? _desc,
  brandId: brandId ?? _brandId,
  suitable: suitable ?? _suitable,
);
  num? get id => _id;
  String? get name => _name;
  String? get number => _number;
  String? get addTime => _addTime;
  num? get cost => _cost;
  String? get imgUrl => _imgUrl;
  String? get endTime => _endTime;
  String? get status => _status;
  String? get employUrl => _employUrl;
  String? get code => _code;
  dynamic get desc => _desc;
  String? get brandId => _brandId;
  List<Suitable>? get suitable => _suitable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['number'] = _number;
    map['addTime'] = _addTime;
    map['cost'] = _cost;
    map['imgUrl'] = _imgUrl;
    map['endTime'] = _endTime;
    map['status'] = _status;
    map['employUrl'] = _employUrl;
    map['code'] = _code;
    map['desc'] = _desc;
    map['brandId'] = _brandId;
    if (_suitable != null) {
      map['suitable'] = _suitable?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// shopId : "heyday-B01-dagu"
/// shopNm : "澳大店"

class Suitable {
  Suitable({
      String? shopId, 
      String? shopNm,}){
    _shopId = shopId;
    _shopNm = shopNm;
}

  Suitable.fromJson(dynamic json) {
    _shopId = json['shopId'];
    _shopNm = json['shopNm'];
  }
  String? _shopId;
  String? _shopNm;
Suitable copyWith({  String? shopId,
  String? shopNm,
}) => Suitable(  shopId: shopId ?? _shopId,
  shopNm: shopNm ?? _shopNm,
);
  String? get shopId => _shopId;
  String? get shopNm => _shopNm;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['shopId'] = _shopId;
    map['shopNm'] = _shopNm;
    return map;
  }

}