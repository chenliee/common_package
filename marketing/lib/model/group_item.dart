import 'package:marketing/marketing.dart';

/// id : 3
/// name : "飛機飛機飛機"
/// brandId : "dagu"
/// limit : 0
/// goodsId : "767796035441103539"
/// goodsDetId : "string"
/// nativePrice : 4200
/// nowPrice : 100
/// count : 98
/// creatTime : "2023-05-26T00:00:00.000Z"
/// closeTime : "2023-12-31T08:27:34.450Z"
/// desc : "string"
/// part : 12
/// imgUrl : "https://storage.dev.heyday-catering.com:20443/marketing/public/7a329e971b771e6b504a98f8d3c54dfb446c6f504322956ce1d7543b07b9ef98_upload_1685362801103.0.4781568727455978.0.jpg"

class GroupItem {
  GroupItem({
    num? id,
    String? name,
    String? brandId,
    num? limit,
    String? goodsId,
    String? goodsDetId,
    num? nativePrice,
    num? nowPrice,
    num? count,
    String? creatTime,
    String? closeTime,
    String? desc,
    num? part,
    String? imgUrl,
    Merchant? merchant,
    Project? project,
  }) {
    _id = id;
    _name = name;
    _brandId = brandId;
    _limit = limit;
    _goodsId = goodsId;
    _goodsDetId = goodsDetId;
    _nativePrice = nativePrice;
    _nowPrice = nowPrice;
    _count = count;
    _creatTime = creatTime;
    _closeTime = closeTime;
    _desc = desc;
    _part = part;
    _imgUrl = imgUrl;
    _merchant = merchant;
    _project = project;
  }

  GroupItem.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _brandId = json['brandId'];
    _limit = json['limit'];
    _goodsId = json['goodsId'];
    _goodsDetId = json['goodsDetId'];
    _nativePrice = json['nativePrice'];
    _nowPrice = json['nowPrice'];
    _count = json['count'];
    _creatTime = json['creatTime'];
    _closeTime = json['closeTime'];
    _desc = json['desc'];
    _part = json['part'];
    _imgUrl = json['imgUrl'];
    _merchant =
        json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
    _project =
        json['project'] != null ? Project.fromJson(json['project']) : null;
  }
  num? _id;
  String? _name;
  String? _brandId;
  num? _limit;
  String? _goodsId;
  String? _goodsDetId;
  num? _nativePrice;
  num? _nowPrice;
  num? _count;
  String? _creatTime;
  String? _closeTime;
  String? _desc;
  num? _part;
  String? _imgUrl;
  Merchant? _merchant;
  Project? _project;
  GroupItem copyWith({
    num? id,
    String? name,
    String? brandId,
    num? limit,
    String? goodsId,
    String? goodsDetId,
    num? nativePrice,
    num? nowPrice,
    num? count,
    String? creatTime,
    String? closeTime,
    String? desc,
    num? part,
    String? imgUrl,
    Merchant? merchant,
    Project? project,
  }) =>
      GroupItem(
        id: id ?? _id,
        name: name ?? _name,
        brandId: brandId ?? _brandId,
        limit: limit ?? _limit,
        goodsId: goodsId ?? _goodsId,
        goodsDetId: goodsDetId ?? _goodsDetId,
        nativePrice: nativePrice ?? _nativePrice,
        nowPrice: nowPrice ?? _nowPrice,
        count: count ?? _count,
        creatTime: creatTime ?? _creatTime,
        closeTime: closeTime ?? _closeTime,
        desc: desc ?? _desc,
        part: part ?? _part,
        imgUrl: imgUrl ?? _imgUrl,
        merchant: merchant ?? _merchant,
        project: project ?? _project,
      );
  num? get id => _id;
  String? get name => _name;
  String? get brandId => _brandId;
  num? get limit => _limit;
  String? get goodsId => _goodsId;
  String? get goodsDetId => _goodsDetId;
  num? get nativePrice => _nativePrice;
  num? get nowPrice => _nowPrice;
  num? get count => _count;
  String? get creatTime => _creatTime;
  String? get closeTime => _closeTime;
  String? get desc => _desc;
  num? get part => _part;
  String? get imgUrl => _imgUrl;
  Merchant? get merchant => _merchant;
  Project? get project => _project;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['brandId'] = _brandId;
    map['limit'] = _limit;
    map['goodsId'] = _goodsId;
    map['goodsDetId'] = _goodsDetId;
    map['nativePrice'] = _nativePrice;
    map['nowPrice'] = _nowPrice;
    map['count'] = _count;
    map['creatTime'] = _creatTime;
    map['closeTime'] = _closeTime;
    map['desc'] = _desc;
    map['part'] = _part;
    map['imgUrl'] = _imgUrl;
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    if (_project != null) {
      map['project'] = _project?.toJson();
    }
    return map;
  }
}
