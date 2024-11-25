import 'dart:convert';

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
    String? useTime,
    String? refundTime,
    String? payTime,
    String? status,
    String? employUrl,
    String? code,
    dynamic desc,
    String? brandId,
    GroupAct? groupAct,
  }) {
    _id = id;
    _name = name;
    _number = number;
    _addTime = addTime;
    _cost = cost;
    _imgUrl = imgUrl;
    _endTime = endTime;
    _useTime = useTime;
    _refundTime = refundTime;
    _payTime = payTime;
    _status = status;
    _employUrl = employUrl;
    _code = code;
    _desc = desc;
    _brandId = brandId;
    _groupAct = groupAct;
  }

  UserGroupItem.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _number = json['number'];
    _addTime = json['addTime'];
    _cost = json['cost'];
    _imgUrl = json['imgUrl'];
    _endTime = json['endTime'];
    _useTime = json['useTime'];
    _refundTime = json['refundTime'];
    _payTime = json['payTime'];
    _status = json['status'];
    _employUrl = json['employUrl'];
    _code = json['code'];
    _desc = json['desc'];
    _brandId = json['brandId'];
    _groupAct =
        json['groupAct'] != null ? GroupAct.fromJson(json['groupAct']) : null;
  }

  num? _id;
  String? _name;
  String? _number;
  String? _addTime;
  num? _cost;
  String? _imgUrl;
  String? _endTime;
  String? _useTime;
  String? _refundTime;
  String? _payTime;
  String? _status;
  String? _employUrl;
  String? _code;
  dynamic _desc;
  String? _brandId;
  GroupAct? _groupAct;
  UserGroupItem copyWith({
    num? id,
    String? name,
    String? number,
    String? addTime,
    num? cost,
    String? imgUrl,
    String? endTime,
    String? useTime,
    String? refundTime,
    String? payTime,
    String? status,
    String? employUrl,
    String? code,
    dynamic desc,
    String? brandId,
    GroupAct? groupAct,
  }) =>
      UserGroupItem(
        id: id ?? _id,
        name: name ?? _name,
        number: number ?? _number,
        addTime: addTime ?? _addTime,
        cost: cost ?? _cost,
        imgUrl: imgUrl ?? _imgUrl,
        endTime: endTime ?? _endTime,
        useTime: useTime ?? _useTime,
        refundTime: refundTime ?? _refundTime,
        payTime: payTime ?? _payTime,
        status: status ?? _status,
        employUrl: employUrl ?? _employUrl,
        code: code ?? _code,
        desc: desc ?? _desc,
        brandId: brandId ?? _brandId,
        groupAct: groupAct ?? _groupAct,
      );
  num? get id => _id;
  String? get name => _name;
  String? get number => _number;
  String? get addTime => _addTime;
  num? get cost => _cost;
  String? get imgUrl => _imgUrl;
  String? get endTime => _endTime;
  String? get useTime => _useTime;
  String? get refundTime => _refundTime;
  String? get payTime => _payTime;
  String? get status => _status;
  String? get employUrl => _employUrl;
  String? get code => _code;
  dynamic get desc => _desc;
  String? get brandId => _brandId;
  GroupAct? get groupAct => _groupAct;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['number'] = _number;
    map['addTime'] = _addTime;
    map['cost'] = _cost;
    map['imgUrl'] = _imgUrl;
    map['endTime'] = _endTime;
    map['useTime'] = _useTime;
    map['payTime'] = _payTime;
    map['status'] = _status;
    map['employUrl'] = _employUrl;
    map['code'] = _code;
    map['desc'] = _desc;
    map['brandId'] = _brandId;
    if (_groupAct != null) {
      map['groupAct'] = _groupAct?.toJson();
    }
    return map;
  }
}

/// shopId : "heyday-B01-dagu"
/// shopNm : "澳大店"

class Suitable {
  Suitable({
    String? shopId,
    String? shopNm,
  }) {
    _shopId = shopId;
    _shopNm = shopNm;
  }

  Suitable.fromJson(dynamic json) {
    _shopId = json['shopId'];
    _shopNm = json['shopNm'];
  }
  String? _shopId;
  String? _shopNm;
  Suitable copyWith({
    String? shopId,
    String? shopNm,
  }) =>
      Suitable(
        shopId: shopId ?? _shopId,
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

/// id : 20
/// projectId : 4
/// name : "123"
/// brandId : "yp"
/// limit : 15
/// goodsId : "227971143696536150"
/// goodsDetId : null
/// shopIds : [{"shopId":"heyday-B01-yp","shopNm":"優品店"}]
/// imgUrl : {"file":305}
/// nativePrice : 770
/// nowPrice : 200
/// part : 1
/// count : 14
/// status : true
/// cancelDate : 122
/// addTime : "2024-04-10T08:29:39.086Z"
/// creatTime : "2024-04-10T08:29:26.643Z"
/// closeTime : "2024-04-30T08:29:28.377Z"
/// desc : "dsad"
/// deletedAt : null
/// project : {"id":4,"merchantId":4,"code":"makmakshop","title":"商城","createdAt":"2023-05-12T09:16:59.294Z","merchant":{"id":4,"code":"goody","title":"優品先生","createdAt":"2023-05-12T09:16:59.216Z"}}

GroupAct groupActFromJson(String str) => GroupAct.fromJson(json.decode(str));
String groupActToJson(GroupAct data) => json.encode(data.toJson());

class GroupAct {
  GroupAct({
    num? id,
    num? projectId,
    String? name,
    String? brandId,
    num? limit,
    String? goodsId,
    dynamic goodsDetId,
    List<ShopIds>? shopIds,
    ImgUrl? imgUrl,
    num? nativePrice,
    num? nowPrice,
    num? part,
    num? count,
    bool? status,
    num? cancelDate,
    String? addTime,
    String? creatTime,
    String? closeTime,
    String? desc,
    dynamic deletedAt,
    Project? project,
    Merchant? merchant,
  }) {
    _id = id;
    _projectId = projectId;
    _name = name;
    _brandId = brandId;
    _limit = limit;
    _goodsId = goodsId;
    _goodsDetId = goodsDetId;
    _shopIds = shopIds;
    _imgUrl = imgUrl;
    _nativePrice = nativePrice;
    _nowPrice = nowPrice;
    _part = part;
    _count = count;
    _status = status;
    _cancelDate = cancelDate;
    _addTime = addTime;
    _creatTime = creatTime;
    _closeTime = closeTime;
    _desc = desc;
    _deletedAt = deletedAt;
    _project = project;
    _merchant = merchant;
  }

  GroupAct.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _name = json['name'];
    _brandId = json['brandId'];
    _limit = json['limit'];
    _goodsId = json['goodsId'];
    _goodsDetId = json['goodsDetId'];
    if (json['shopIds'] != null) {
      _shopIds = [];
      json['shopIds'].forEach((v) {
        _shopIds?.add(ShopIds.fromJson(v));
      });
    }
    _imgUrl = json['imgUrl'] != null ? ImgUrl.fromJson(json['imgUrl']) : null;
    _nativePrice = json['nativePrice'];
    _nowPrice = json['nowPrice'];
    _part = json['part'];
    _count = json['count'];
    _status = json['status'];
    _cancelDate = json['cancelDate'];
    _addTime = json['addTime'];
    _creatTime = json['creatTime'];
    _closeTime = json['closeTime'];
    _desc = json['desc'];
    _deletedAt = json['deletedAt'];
    _project =
        json['project'] != null ? Project.fromJson(json['project']) : null;
    _merchant =
        json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
  }
  num? _id;
  num? _projectId;
  String? _name;
  String? _brandId;
  num? _limit;
  String? _goodsId;
  dynamic _goodsDetId;
  List<ShopIds>? _shopIds;
  ImgUrl? _imgUrl;
  num? _nativePrice;
  num? _nowPrice;
  num? _part;
  num? _count;
  bool? _status;
  num? _cancelDate;
  String? _addTime;
  String? _creatTime;
  String? _closeTime;
  String? _desc;
  dynamic _deletedAt;
  Project? _project;
  Merchant? _merchant;
  GroupAct copyWith({
    num? id,
    num? projectId,
    String? name,
    String? brandId,
    num? limit,
    String? goodsId,
    dynamic goodsDetId,
    List<ShopIds>? shopIds,
    ImgUrl? imgUrl,
    num? nativePrice,
    num? nowPrice,
    num? part,
    num? count,
    bool? status,
    num? cancelDate,
    String? addTime,
    String? creatTime,
    String? closeTime,
    String? desc,
    dynamic deletedAt,
    Project? project,
    Merchant? merchant,
  }) =>
      GroupAct(
        id: id ?? _id,
        projectId: projectId ?? _projectId,
        name: name ?? _name,
        brandId: brandId ?? _brandId,
        limit: limit ?? _limit,
        goodsId: goodsId ?? _goodsId,
        goodsDetId: goodsDetId ?? _goodsDetId,
        shopIds: shopIds ?? _shopIds,
        imgUrl: imgUrl ?? _imgUrl,
        nativePrice: nativePrice ?? _nativePrice,
        nowPrice: nowPrice ?? _nowPrice,
        part: part ?? _part,
        count: count ?? _count,
        status: status ?? _status,
        cancelDate: cancelDate ?? _cancelDate,
        addTime: addTime ?? _addTime,
        creatTime: creatTime ?? _creatTime,
        closeTime: closeTime ?? _closeTime,
        desc: desc ?? _desc,
        deletedAt: deletedAt ?? _deletedAt,
        project: project ?? _project,
        merchant: merchant ?? _merchant,
      );
  num? get id => _id;
  num? get projectId => _projectId;
  String? get name => _name;
  String? get brandId => _brandId;
  num? get limit => _limit;
  String? get goodsId => _goodsId;
  dynamic get goodsDetId => _goodsDetId;
  List<ShopIds>? get shopIds => _shopIds;
  ImgUrl? get imgUrl => _imgUrl;
  num? get nativePrice => _nativePrice;
  num? get nowPrice => _nowPrice;
  num? get part => _part;
  num? get count => _count;
  bool? get status => _status;
  num? get cancelDate => _cancelDate;
  String? get addTime => _addTime;
  String? get creatTime => _creatTime;
  String? get closeTime => _closeTime;
  String? get desc => _desc;
  dynamic get deletedAt => _deletedAt;
  Project? get project => _project;
  Merchant? get merchant => _merchant;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['name'] = _name;
    map['brandId'] = _brandId;
    map['limit'] = _limit;
    map['goodsId'] = _goodsId;
    map['goodsDetId'] = _goodsDetId;
    if (_shopIds != null) {
      map['shopIds'] = _shopIds?.map((v) => v.toJson()).toList();
    }
    if (_imgUrl != null) {
      map['imgUrl'] = _imgUrl?.toJson();
    }
    map['nativePrice'] = _nativePrice;
    map['nowPrice'] = _nowPrice;
    map['part'] = _part;
    map['count'] = _count;
    map['status'] = _status;
    map['cancelDate'] = _cancelDate;
    map['addTime'] = _addTime;
    map['creatTime'] = _creatTime;
    map['closeTime'] = _closeTime;
    map['desc'] = _desc;
    map['deletedAt'] = _deletedAt;
    if (_project != null) {
      map['project'] = _project?.toJson();
    }
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    return map;
  }
}

/// id : 4
/// merchantId : 4
/// code : "makmakshop"
/// title : "商城"
/// createdAt : "2023-05-12T09:16:59.294Z"
/// merchant : {"id":4,"code":"goody","title":"優品先生","createdAt":"2023-05-12T09:16:59.216Z"}

Project projectFromJson(String str) => Project.fromJson(json.decode(str));
String projectToJson(Project data) => json.encode(data.toJson());

class Project {
  Project({
    num? id,
    num? merchantId,
    String? code,
    String? title,
    String? createdAt,
    Merchant? merchant,
  }) {
    _id = id;
    _merchantId = merchantId;
    _code = code;
    _title = title;
    _createdAt = createdAt;
    _merchant = merchant;
  }

  Project.fromJson(dynamic json) {
    _id = json['id'];
    _merchantId = json['merchantId'];
    _code = json['code'];
    _title = json['title'];
    _createdAt = json['createdAt'];
    _merchant =
        json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
  }
  num? _id;
  num? _merchantId;
  String? _code;
  String? _title;
  String? _createdAt;
  Merchant? _merchant;
  Project copyWith({
    num? id,
    num? merchantId,
    String? code,
    String? title,
    String? createdAt,
    Merchant? merchant,
  }) =>
      Project(
        id: id ?? _id,
        merchantId: merchantId ?? _merchantId,
        code: code ?? _code,
        title: title ?? _title,
        createdAt: createdAt ?? _createdAt,
        merchant: merchant ?? _merchant,
      );
  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get code => _code;
  String? get title => _title;
  String? get createdAt => _createdAt;
  Merchant? get merchant => _merchant;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['merchantId'] = _merchantId;
    map['code'] = _code;
    map['title'] = _title;
    map['createdAt'] = _createdAt;
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    return map;
  }
}

/// id : 4
/// code : "goody"
/// title : "優品先生"
/// createdAt : "2023-05-12T09:16:59.216Z"

Merchant merchantFromJson(String str) => Merchant.fromJson(json.decode(str));
String merchantToJson(Merchant data) => json.encode(data.toJson());

class Merchant {
  Merchant({
    num? id,
    String? code,
    String? title,
    String? createdAt,
  }) {
    _id = id;
    _code = code;
    _title = title;
    _createdAt = createdAt;
  }

  Merchant.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _title = json['title'];
    _createdAt = json['createdAt'];
  }
  num? _id;
  String? _code;
  String? _title;
  String? _createdAt;
  Merchant copyWith({
    num? id,
    String? code,
    String? title,
    String? createdAt,
  }) =>
      Merchant(
        id: id ?? _id,
        code: code ?? _code,
        title: title ?? _title,
        createdAt: createdAt ?? _createdAt,
      );
  num? get id => _id;
  String? get code => _code;
  String? get title => _title;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['title'] = _title;
    map['createdAt'] = _createdAt;
    return map;
  }
}

/// file : 305

ImgUrl imgUrlFromJson(String str) => ImgUrl.fromJson(json.decode(str));
String imgUrlToJson(ImgUrl data) => json.encode(data.toJson());

class ImgUrl {
  ImgUrl({
    num? file,
  }) {
    _file = file;
  }

  ImgUrl.fromJson(dynamic json) {
    _file = json['file'];
  }
  num? _file;
  ImgUrl copyWith({
    num? file,
  }) =>
      ImgUrl(
        file: file ?? _file,
      );
  num? get file => _file;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['file'] = _file;
    return map;
  }
}

/// shopId : "heyday-B01-yp"
/// shopNm : "優品店"

ShopIds shopIdsFromJson(String str) => ShopIds.fromJson(json.decode(str));
String shopIdsToJson(ShopIds data) => json.encode(data.toJson());

class ShopIds {
  ShopIds({
    String? shopId,
    String? shopNm,
  }) {
    _shopId = shopId;
    _shopNm = shopNm;
  }

  ShopIds.fromJson(dynamic json) {
    _shopId = json['shopId'];
    _shopNm = json['shopNm'];
  }
  String? _shopId;
  String? _shopNm;
  ShopIds copyWith({
    String? shopId,
    String? shopNm,
  }) =>
      ShopIds(
        shopId: shopId ?? _shopId,
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
