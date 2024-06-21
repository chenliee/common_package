import 'dart:convert';

/// id : 11
/// menuType : "lunch"
/// title : "蛋挞餐"
/// price : 45
/// period : "daily"
/// days : [1,2]
/// package : false
/// cover : {"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/9534693bd9b05c9f8a10d707dbcab97899883f3dc2ae05e6655b64da4192df21ab6257aac322ad9cc6ef6f9cb6a69190d3e744e301282a7b446aad2cfd89280d.jpg","name":"cbf4aa20adb1721877fa4fb7c35a9c91_a6312e119313b07e34134f3b4ad7912396dd8c9f.jpg","__type":"File"}
/// description : "很好吃"
/// withArea : null
/// withBranches : null
/// withoutBranches : ["123"]
/// canBuy : false
/// foodsWeightTable : {"8OKu4VtFRu":100,"Dq6ApjTGkB":700,"HSamIH8dgy":1,"LddsWzRJ3S":250,"OTUsqcCRQs":1,"eCeoSeWLOe":100,"gr8qRvLCHc":100,"l8bGH5EyIK":100,"pbd1A1HZjk":100,"qwCzBZCBrk":3}
/// foodsTitleTable : {"8OKu4VtFRu":"西瓜","Dq6ApjTGkB":"螺蛳粉粉","HSamIH8dgy":"豆沙菠蘿包","LddsWzRJ3S":"冬瓜茶","OTUsqcCRQs":"一个食物","eCeoSeWLOe":"腐竹炆豬肉","gr8qRvLCHc":"時菜","l8bGH5EyIK":"蒜蓉炒節瓜","pbd1A1HZjk":"火腿蒸水蛋","qwCzBZCBrk":"草莓"}
/// foodsSunitTable : {"8OKu4VtFRu":"g","Dq6ApjTGkB":"g","HSamIH8dgy":"a","LddsWzRJ3S":"ml","OTUsqcCRQs":"a","eCeoSeWLOe":"g","gr8qRvLCHc":"g","l8bGH5EyIK":"g","pbd1A1HZjk":"g","qwCzBZCBrk":"a"}
/// dateFrom : "2023-11-30T16:00:00.000Z"
/// dateTo : "2024-02-28T16:00:00.000Z"
/// createdAt : "2024-03-27T06:48:33.607Z"
/// updatedAt : "2024-03-27T06:48:33.607Z"
/// objectId : "v3BGc8JIJA"
/// sn : "v3BGc8JIJA"

FoodMenus foodMenusFromJson(String str) => FoodMenus.fromJson(json.decode(str));
String foodMenusToJson(FoodMenus data) => json.encode(data.toJson());

class FoodMenus {
  FoodMenus({
    num? id,
    String? menuType,
    String? title,
    num? price,
    String? period,
    List<num>? days,
    bool? package,
    Cover? cover,
    String? description,
    dynamic withArea,
    dynamic withBranches,
    List<String>? withoutBranches,
    bool? canBuy,
    FoodsWeightTable? foodsWeightTable,
    FoodsTitleTable? foodsTitleTable,
    FoodsSunitTable? foodsSunitTable,
    String? dateFrom,
    String? dateTo,
    String? createdAt,
    String? updatedAt,
    String? objectId,
    String? sn,
  }) {
    _id = id;
    _menuType = menuType;
    _title = title;
    _price = price;
    _period = period;
    _days = days;
    _package = package;
    _cover = cover;
    _description = description;
    _withArea = withArea;
    _withBranches = withBranches;
    _withoutBranches = withoutBranches;
    _canBuy = canBuy;
    _foodsWeightTable = foodsWeightTable;
    _foodsTitleTable = foodsTitleTable;
    _foodsSunitTable = foodsSunitTable;
    _dateFrom = dateFrom;
    _dateTo = dateTo;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _objectId = objectId;
    _sn = sn;
  }

  FoodMenus.fromJson(dynamic json) {
    _id = json['id'];
    _menuType = json['menuType'];
    _title = json['title'];
    _price = json['price'];
    _period = json['period'];
    _days = json['days'] != null ? json['days'].cast<num>() : [];
    _package = json['package'];
    _cover = json['cover'] != null ? Cover.fromJson(json['cover']) : null;
    _description = json['description'];
    _withArea = json['withArea'];
    _withBranches = json['withBranches'];
    _withoutBranches = json['withoutBranches'] != null
        ? json['withoutBranches'].cast<String>()
        : [];
    _canBuy = json['canBuy'];
    _foodsWeightTable = json['foodsWeightTable'] != null
        ? FoodsWeightTable.fromJson(json['foodsWeightTable'])
        : null;
    _foodsTitleTable = json['foodsTitleTable'] != null
        ? FoodsTitleTable.fromJson(json['foodsTitleTable'])
        : null;
    _foodsSunitTable = json['foodsSunitTable'] != null
        ? FoodsSunitTable.fromJson(json['foodsSunitTable'])
        : null;
    _dateFrom = json['dateFrom'];
    _dateTo = json['dateTo'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _objectId = json['objectId'];
    _sn = json['sn'];
  }
  num? _id;
  String? _menuType;
  String? _title;
  num? _price;
  String? _period;
  List<num>? _days;
  bool? _package;
  Cover? _cover;
  String? _description;
  dynamic _withArea;
  dynamic _withBranches;
  List<String>? _withoutBranches;
  bool? _canBuy;
  FoodsWeightTable? _foodsWeightTable;
  FoodsTitleTable? _foodsTitleTable;
  FoodsSunitTable? _foodsSunitTable;
  String? _dateFrom;
  String? _dateTo;
  String? _createdAt;
  String? _updatedAt;
  String? _objectId;
  String? _sn;

  num? get id => _id;
  String? get menuType => _menuType;
  String? get title => _title;
  num? get price => _price;
  String? get period => _period;
  List<num>? get days => _days;
  bool? get package => _package;
  Cover? get cover => _cover;
  String? get description => _description;
  dynamic get withArea => _withArea;
  dynamic get withBranches => _withBranches;
  List<String>? get withoutBranches => _withoutBranches;
  bool? get canBuy => _canBuy;
  FoodsWeightTable? get foodsWeightTable => _foodsWeightTable;
  FoodsTitleTable? get foodsTitleTable => _foodsTitleTable;
  FoodsSunitTable? get foodsSunitTable => _foodsSunitTable;
  String? get dateFrom => _dateFrom;
  String? get dateTo => _dateTo;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get objectId => _objectId;
  String? get sn => _sn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['menuType'] = _menuType;
    map['title'] = _title;
    map['price'] = _price;
    map['period'] = _period;
    map['days'] = _days;
    map['package'] = _package;
    if (_cover != null) {
      map['cover'] = _cover?.toJson();
    }
    map['description'] = _description;
    map['withArea'] = _withArea;
    map['withBranches'] = _withBranches;
    map['withoutBranches'] = _withoutBranches;
    map['canBuy'] = _canBuy;
    if (_foodsWeightTable != null) {
      map['foodsWeightTable'] = _foodsWeightTable?.toJson();
    }
    if (_foodsTitleTable != null) {
      map['foodsTitleTable'] = _foodsTitleTable?.toJson();
    }
    if (_foodsSunitTable != null) {
      map['foodsSunitTable'] = _foodsSunitTable?.toJson();
    }
    map['dateFrom'] = _dateFrom;
    map['dateTo'] = _dateTo;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['objectId'] = _objectId;
    map['sn'] = _sn;
    return map;
  }
}

/// 8OKu4VtFRu : "g"
/// Dq6ApjTGkB : "g"
/// HSamIH8dgy : "a"
/// LddsWzRJ3S : "ml"
/// OTUsqcCRQs : "a"
/// eCeoSeWLOe : "g"
/// gr8qRvLCHc : "g"
/// l8bGH5EyIK : "g"
/// pbd1A1HZjk : "g"
/// qwCzBZCBrk : "a"

FoodsSunitTable foodsSunitTableFromJson(String str) =>
    FoodsSunitTable.fromJson(json.decode(str));
String foodsSunitTableToJson(FoodsSunitTable data) =>
    json.encode(data.toJson());

class FoodsSunitTable {
  FoodsSunitTable({
    String? OKu4VtFRu,
    String? dq6ApjTGkB,
    String? hSamIH8dgy,
    String? lddsWzRJ3S,
    String? oTUsqcCRQs,
    String? eCeoSeWLOe,
    String? gr8qRvLCHc,
    String? l8bGH5EyIK,
    String? pbd1A1HZjk,
    String? qwCzBZCBrk,
  }) {
    _OKu4VtFRu = OKu4VtFRu;
    _dq6ApjTGkB = dq6ApjTGkB;
    _hSamIH8dgy = hSamIH8dgy;
    _lddsWzRJ3S = lddsWzRJ3S;
    _oTUsqcCRQs = oTUsqcCRQs;
    _eCeoSeWLOe = eCeoSeWLOe;
    _gr8qRvLCHc = gr8qRvLCHc;
    _l8bGH5EyIK = l8bGH5EyIK;
    _pbd1A1HZjk = pbd1A1HZjk;
    _qwCzBZCBrk = qwCzBZCBrk;
  }

  FoodsSunitTable.fromJson(dynamic json) {
    _OKu4VtFRu = json['8OKu4VtFRu'];
    _dq6ApjTGkB = json['Dq6ApjTGkB'];
    _hSamIH8dgy = json['HSamIH8dgy'];
    _lddsWzRJ3S = json['LddsWzRJ3S'];
    _oTUsqcCRQs = json['OTUsqcCRQs'];
    _eCeoSeWLOe = json['eCeoSeWLOe'];
    _gr8qRvLCHc = json['gr8qRvLCHc'];
    _l8bGH5EyIK = json['l8bGH5EyIK'];
    _pbd1A1HZjk = json['pbd1A1HZjk'];
    _qwCzBZCBrk = json['qwCzBZCBrk'];
  }
  String? _OKu4VtFRu;
  String? _dq6ApjTGkB;
  String? _hSamIH8dgy;
  String? _lddsWzRJ3S;
  String? _oTUsqcCRQs;
  String? _eCeoSeWLOe;
  String? _gr8qRvLCHc;
  String? _l8bGH5EyIK;
  String? _pbd1A1HZjk;
  String? _qwCzBZCBrk;

  String? get OKu4VtFRu => _OKu4VtFRu;
  String? get dq6ApjTGkB => _dq6ApjTGkB;
  String? get hSamIH8dgy => _hSamIH8dgy;
  String? get lddsWzRJ3S => _lddsWzRJ3S;
  String? get oTUsqcCRQs => _oTUsqcCRQs;
  String? get eCeoSeWLOe => _eCeoSeWLOe;
  String? get gr8qRvLCHc => _gr8qRvLCHc;
  String? get l8bGH5EyIK => _l8bGH5EyIK;
  String? get pbd1A1HZjk => _pbd1A1HZjk;
  String? get qwCzBZCBrk => _qwCzBZCBrk;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['8OKu4VtFRu'] = _OKu4VtFRu;
    map['Dq6ApjTGkB'] = _dq6ApjTGkB;
    map['HSamIH8dgy'] = _hSamIH8dgy;
    map['LddsWzRJ3S'] = _lddsWzRJ3S;
    map['OTUsqcCRQs'] = _oTUsqcCRQs;
    map['eCeoSeWLOe'] = _eCeoSeWLOe;
    map['gr8qRvLCHc'] = _gr8qRvLCHc;
    map['l8bGH5EyIK'] = _l8bGH5EyIK;
    map['pbd1A1HZjk'] = _pbd1A1HZjk;
    map['qwCzBZCBrk'] = _qwCzBZCBrk;
    return map;
  }
}

/// 8OKu4VtFRu : "西瓜"
/// Dq6ApjTGkB : "螺蛳粉粉"
/// HSamIH8dgy : "豆沙菠蘿包"
/// LddsWzRJ3S : "冬瓜茶"
/// OTUsqcCRQs : "一个食物"
/// eCeoSeWLOe : "腐竹炆豬肉"
/// gr8qRvLCHc : "時菜"
/// l8bGH5EyIK : "蒜蓉炒節瓜"
/// pbd1A1HZjk : "火腿蒸水蛋"
/// qwCzBZCBrk : "草莓"

FoodsTitleTable foodsTitleTableFromJson(String str) =>
    FoodsTitleTable.fromJson(json.decode(str));
String foodsTitleTableToJson(FoodsTitleTable data) =>
    json.encode(data.toJson());

class FoodsTitleTable {
  FoodsTitleTable({
    String? OKu4VtFRu,
    String? dq6ApjTGkB,
    String? hSamIH8dgy,
    String? lddsWzRJ3S,
    String? oTUsqcCRQs,
    String? eCeoSeWLOe,
    String? gr8qRvLCHc,
    String? l8bGH5EyIK,
    String? pbd1A1HZjk,
    String? qwCzBZCBrk,
  }) {
    _OKu4VtFRu = OKu4VtFRu;
    _dq6ApjTGkB = dq6ApjTGkB;
    _hSamIH8dgy = hSamIH8dgy;
    _lddsWzRJ3S = lddsWzRJ3S;
    _oTUsqcCRQs = oTUsqcCRQs;
    _eCeoSeWLOe = eCeoSeWLOe;
    _gr8qRvLCHc = gr8qRvLCHc;
    _l8bGH5EyIK = l8bGH5EyIK;
    _pbd1A1HZjk = pbd1A1HZjk;
    _qwCzBZCBrk = qwCzBZCBrk;
  }

  FoodsTitleTable.fromJson(dynamic json) {
    _OKu4VtFRu = json['8OKu4VtFRu'];
    _dq6ApjTGkB = json['Dq6ApjTGkB'];
    _hSamIH8dgy = json['HSamIH8dgy'];
    _lddsWzRJ3S = json['LddsWzRJ3S'];
    _oTUsqcCRQs = json['OTUsqcCRQs'];
    _eCeoSeWLOe = json['eCeoSeWLOe'];
    _gr8qRvLCHc = json['gr8qRvLCHc'];
    _l8bGH5EyIK = json['l8bGH5EyIK'];
    _pbd1A1HZjk = json['pbd1A1HZjk'];
    _qwCzBZCBrk = json['qwCzBZCBrk'];
  }
  String? _OKu4VtFRu;
  String? _dq6ApjTGkB;
  String? _hSamIH8dgy;
  String? _lddsWzRJ3S;
  String? _oTUsqcCRQs;
  String? _eCeoSeWLOe;
  String? _gr8qRvLCHc;
  String? _l8bGH5EyIK;
  String? _pbd1A1HZjk;
  String? _qwCzBZCBrk;

  String? get OKu4VtFRu => _OKu4VtFRu;
  String? get dq6ApjTGkB => _dq6ApjTGkB;
  String? get hSamIH8dgy => _hSamIH8dgy;
  String? get lddsWzRJ3S => _lddsWzRJ3S;
  String? get oTUsqcCRQs => _oTUsqcCRQs;
  String? get eCeoSeWLOe => _eCeoSeWLOe;
  String? get gr8qRvLCHc => _gr8qRvLCHc;
  String? get l8bGH5EyIK => _l8bGH5EyIK;
  String? get pbd1A1HZjk => _pbd1A1HZjk;
  String? get qwCzBZCBrk => _qwCzBZCBrk;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['8OKu4VtFRu'] = _OKu4VtFRu;
    map['Dq6ApjTGkB'] = _dq6ApjTGkB;
    map['HSamIH8dgy'] = _hSamIH8dgy;
    map['LddsWzRJ3S'] = _lddsWzRJ3S;
    map['OTUsqcCRQs'] = _oTUsqcCRQs;
    map['eCeoSeWLOe'] = _eCeoSeWLOe;
    map['gr8qRvLCHc'] = _gr8qRvLCHc;
    map['l8bGH5EyIK'] = _l8bGH5EyIK;
    map['pbd1A1HZjk'] = _pbd1A1HZjk;
    map['qwCzBZCBrk'] = _qwCzBZCBrk;
    return map;
  }
}

/// 8OKu4VtFRu : 100
/// Dq6ApjTGkB : 700
/// HSamIH8dgy : 1
/// LddsWzRJ3S : 250
/// OTUsqcCRQs : 1
/// eCeoSeWLOe : 100
/// gr8qRvLCHc : 100
/// l8bGH5EyIK : 100
/// pbd1A1HZjk : 100
/// qwCzBZCBrk : 3

FoodsWeightTable foodsWeightTableFromJson(String str) =>
    FoodsWeightTable.fromJson(json.decode(str));
String foodsWeightTableToJson(FoodsWeightTable data) =>
    json.encode(data.toJson());

class FoodsWeightTable {
  FoodsWeightTable({
    num? OKu4VtFRu,
    num? dq6ApjTGkB,
    num? hSamIH8dgy,
    num? lddsWzRJ3S,
    num? oTUsqcCRQs,
    num? eCeoSeWLOe,
    num? gr8qRvLCHc,
    num? l8bGH5EyIK,
    num? pbd1A1HZjk,
    num? qwCzBZCBrk,
  }) {
    _OKu4VtFRu = OKu4VtFRu;
    _dq6ApjTGkB = dq6ApjTGkB;
    _hSamIH8dgy = hSamIH8dgy;
    _lddsWzRJ3S = lddsWzRJ3S;
    _oTUsqcCRQs = oTUsqcCRQs;
    _eCeoSeWLOe = eCeoSeWLOe;
    _gr8qRvLCHc = gr8qRvLCHc;
    _l8bGH5EyIK = l8bGH5EyIK;
    _pbd1A1HZjk = pbd1A1HZjk;
    _qwCzBZCBrk = qwCzBZCBrk;
  }

  FoodsWeightTable.fromJson(dynamic json) {
    _OKu4VtFRu = json['8OKu4VtFRu'];
    _dq6ApjTGkB = json['Dq6ApjTGkB'];
    _hSamIH8dgy = json['HSamIH8dgy'];
    _lddsWzRJ3S = json['LddsWzRJ3S'];
    _oTUsqcCRQs = json['OTUsqcCRQs'];
    _eCeoSeWLOe = json['eCeoSeWLOe'];
    _gr8qRvLCHc = json['gr8qRvLCHc'];
    _l8bGH5EyIK = json['l8bGH5EyIK'];
    _pbd1A1HZjk = json['pbd1A1HZjk'];
    _qwCzBZCBrk = json['qwCzBZCBrk'];
  }
  num? _OKu4VtFRu;
  num? _dq6ApjTGkB;
  num? _hSamIH8dgy;
  num? _lddsWzRJ3S;
  num? _oTUsqcCRQs;
  num? _eCeoSeWLOe;
  num? _gr8qRvLCHc;
  num? _l8bGH5EyIK;
  num? _pbd1A1HZjk;
  num? _qwCzBZCBrk;

  num? get OKu4VtFRu => _OKu4VtFRu;
  num? get dq6ApjTGkB => _dq6ApjTGkB;
  num? get hSamIH8dgy => _hSamIH8dgy;
  num? get lddsWzRJ3S => _lddsWzRJ3S;
  num? get oTUsqcCRQs => _oTUsqcCRQs;
  num? get eCeoSeWLOe => _eCeoSeWLOe;
  num? get gr8qRvLCHc => _gr8qRvLCHc;
  num? get l8bGH5EyIK => _l8bGH5EyIK;
  num? get pbd1A1HZjk => _pbd1A1HZjk;
  num? get qwCzBZCBrk => _qwCzBZCBrk;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['8OKu4VtFRu'] = _OKu4VtFRu;
    map['Dq6ApjTGkB'] = _dq6ApjTGkB;
    map['HSamIH8dgy'] = _hSamIH8dgy;
    map['LddsWzRJ3S'] = _lddsWzRJ3S;
    map['OTUsqcCRQs'] = _oTUsqcCRQs;
    map['eCeoSeWLOe'] = _eCeoSeWLOe;
    map['gr8qRvLCHc'] = _gr8qRvLCHc;
    map['l8bGH5EyIK'] = _l8bGH5EyIK;
    map['pbd1A1HZjk'] = _pbd1A1HZjk;
    map['qwCzBZCBrk'] = _qwCzBZCBrk;
    return map;
  }
}

/// url : "https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/9534693bd9b05c9f8a10d707dbcab97899883f3dc2ae05e6655b64da4192df21ab6257aac322ad9cc6ef6f9cb6a69190d3e744e301282a7b446aad2cfd89280d.jpg"
/// name : "cbf4aa20adb1721877fa4fb7c35a9c91_a6312e119313b07e34134f3b4ad7912396dd8c9f.jpg"
/// __type : "File"

Cover coverFromJson(String str) => Cover.fromJson(json.decode(str));
String coverToJson(Cover data) => json.encode(data.toJson());

class Cover {
  Cover({
    String? url,
    String? name,
    String? type,
  }) {
    _url = url;
    _name = name;
    _type = type;
  }

  Cover.fromJson(dynamic json) {
    _url = json['url'];
    _name = json['name'];
    _type = json['__type'];
  }
  String? _url;
  String? _name;
  String? _type;

  String? get url => _url;
  String? get name => _name;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['name'] = _name;
    map['__type'] = _type;
    return map;
  }
}
