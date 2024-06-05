import 'dart:convert';

import 'package:gold/gold.dart';
import 'package:marketing/marketing.dart';
import 'package:service_hub/service_hub.dart';

/// shopHomeTop : [{"id":119241,"bid":292502,"shopId":"限時秒殺","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/0dcc891e0f7e663beb60e0ca600d1903b49824159efd26fd9252f63a7cfe2b74_%E5%88%86%E7%BB%84%2011@3x.png"}},{"id":119242,"bid":292503,"shopId":"優惠團購","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/9d576ba48075d4c417597f0594b3fab5949a6988abe9bff10b70fd989a943fa5_%E5%88%86%E7%BB%84%205@3x.png"}},{"id":119243,"bid":292504,"shopId":"新品首發","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/e5f26a6e00c1a5d68e7636ef7bb31208774aa774bd900e509b66dec31d43c19f_%E5%88%86%E7%BB%84%201@3x.png"}},{"id":119244,"bid":292505,"shopId":"優惠助力","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/192ac312a1727c0eb095625c5c3d111d0bc127010167e21ec2136810f85dd154_%E5%88%86%E7%BB%84%2012@3x.png"}},{"id":119245,"bid":292506,"shopId":"智達文化","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/aaaba9a1f31cd027701c621c50b56eee623d337bc76e35bcc2f04d0722ce65d7_%E5%84%92%E6%9E%97%E6%95%99%E8%82%B2%201.png@3x.png"}}]
/// shopHomeMiddle : [{"id":119246,"bid":292507,"shopId":"益智桌遊","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/de20bf358482ea2d8267fffb858fe06d9dbb670fb93cf31126cc2df7ad6ac258_%E7%BB%84%20252@3x%203.png@3x.png"}},{"id":119247,"bid":292508,"shopId":"童書繪本","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/4e3aabc8f758c70cfe29506b4adc217cf652866f1d0c3c15cd651ccf5944adf8_%E7%BB%84%20252@3x%203.png%EF%BC%881%EF%BC%89.png"}},{"id":119248,"bid":292509,"shopId":"醫療保健","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/b3a54804af187dd0d1db2648474b368b7ee84025968decb74a5668265da0a101_%E5%88%86%E7%BB%84%2017@3x.png"}},{"id":119249,"bid":292510,"shopId":"休閒娛樂","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/69f4ad5f784ab290291af4d088c29a3c06157b187d574c9ee3c849918bfb3f09_%E5%88%86%E7%BB%84%2015@3x.png"}},{"id":119250,"bid":292511,"shopId":"生活服務","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/46a4ee168e69c6dc62b4b6c584c0ca5254eb99bdf4147a22fd90575a0acfb8e6_%E5%88%86%E7%BB%84%2016@3x.png"}}]
/// shopHome : [{"id":119240,"bid":292501,"shopId":"home","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/60af1ca7d5aa6705f6abbfc993cae1e2ebe95794978e455a5ddd3aaeb71960c7_60af1ca7d5aa6705f6abbfc993cae1e2ebe95794978e455a5ddd3aaeb71960c7_home1.png"}}]
/// groupActList : [{"id":23,"name":"測試團購","brandId":"macauscholar","limit":0,"goodsId":"47244086344598104","goodsDetId":null,"nativePrice":10000,"nowPrice":100,"count":100,"creatTime":"2024-06-04T02:13:04.697Z","closeTime":"2025-06-30T02:13:07.768Z","desc":"测试","part":0,"imgUrl":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/aeb3ed80ec3acb5bfb4b0269b4a69a43b2dedf6446015e033db3e5ce9c5f38fb_%E6%95%99%E8%81%B7%E5%B7%A5-uat.jpg"}]
/// goodList : [{"id":7926,"merchantId":1,"uid":"34559630776274609","name":"臺灣最美的風景","barcode":"7810","desc":"","infos":{"instock":{"title":"是否銷售","multiple":false,"value":true},"sell_price":{"title":"零售價","multiple":false,"value":10000},"is_recommend":{"title":"商品推薦","multiple":false,"value":12}},"files":{"cover":{"title":"封面","multiple":false,"desc":"商品、分類的封面","value":{"id":4346,"url":"https://storage.dev.heyday-catering.com:20443/saas-service/public/c925ab68bf72205c14ddf0583791be510545285d879a4e316aaa151d01f21865_094d0743-a6b0-4676-928e-ac4e38277048.jpg","mime":"image/jpeg","name":"094d0743-a6b0-4676-928e-ac4e38277048.jpg","size":"266333","hash":"c925ab68bf72205c14ddf0583791be510545285d879a4e316aaa151d01f21865"}}}},{"id":7927,"merchantId":1,"uid":"74275136363931171","name":"猜猜這是誰","barcode":"6440002200","desc":"","infos":{"sell_price":{"title":"零售價","multiple":false,"value":9500},"is_recommend":{"title":"商品推薦","multiple":false,"value":1}},"files":{"cover":{"title":"封面","multiple":false,"desc":"商品、分類的封面","value":{"id":4347,"url":"https://storage.dev.heyday-catering.com:20443/saas-service/public/65435340366130ef08a53a9bcb136b54dcbf605ad5590512d7a0f4578680545d_017074e8-c802-4559-bd58-fb0f027cf1e2.jpg","mime":"image/jpeg","name":"017074e8-c802-4559-bd58-fb0f027cf1e2.jpg","size":"229177","hash":"65435340366130ef08a53a9bcb136b54dcbf605ad5590512d7a0f4578680545d"}}}},{"id":7928,"merchantId":1,"uid":"100220350782540840","name":"我的小祕密","barcode":"6440001500","desc":"","infos":{"sell_price":{"title":"零售價","multiple":false,"value":9600},"is_recommend":{"title":"商品推薦","multiple":false,"value":2}},"files":{"cover":{"title":"封面","multiple":false,"desc":"商品、分類的封面","value":{"id":4348,"url":"https://storage.dev.heyday-catering.com:20443/saas-service/public/990c1edd628e549596e30690b7ef35445b3143297dcba4d38be85f3ef82b40c7_f654df1f-6f06-4331-891a-9ab10a53bc53.jpg","mime":"image/jpeg","name":"f654df1f-6f06-4331-891a-9ab10a53bc53.jpg","size":"674452","hash":"990c1edd628e549596e30690b7ef35445b3143297dcba4d38be85f3ef82b40c7"}}}}]

ShopHomeModel shopHomeModelFromJson(String str) =>
    ShopHomeModel.fromJson(json.decode(str));
String shopHomeModelToJson(ShopHomeModel data) => json.encode(data.toJson());

class ShopHomeModel {
  ShopHomeModel({
    List<PositionItem>? shopHomeTop,
    List<PositionItem>? shopHomeMiddle,
    List<PositionItem>? shopHome,
    List<GroupItem>? groupActList,
    List<GoodItem>? goodList,
    List<SpikeItem>? secKillActList,
  }) {
    _shopHomeTop = shopHomeTop;
    _shopHomeMiddle = shopHomeMiddle;
    _shopHome = shopHome;
    _groupActList = groupActList;
    _goodList = goodList;
    _secKillActList = secKillActList;
  }

  ShopHomeModel.fromJson(dynamic json) {
    if (json['shopHomeTop'] != null) {
      _shopHomeTop = [];
      json['shopHomeTop'].forEach((v) {
        _shopHomeTop?.add(PositionItem.fromJson(v));
      });
    }
    if (json['shopHomeMiddle'] != null) {
      _shopHomeMiddle = [];
      json['shopHomeMiddle'].forEach((v) {
        _shopHomeMiddle?.add(PositionItem.fromJson(v));
      });
    }
    if (json['shopHome'] != null) {
      _shopHome = [];
      json['shopHome'].forEach((v) {
        _shopHome?.add(PositionItem.fromJson(v));
      });
    }
    if (json['groupActList'] != null) {
      _groupActList = [];
      json['groupActList'].forEach((v) {
        _groupActList?.add(GroupItem.fromJson(v));
      });
    }
    if (json['goodList'] != null) {
      _goodList = [];
      json['goodList'].forEach((v) {
        _goodList?.add(GoodItem.fromJson(v));
      });
    }
    if (json['seckillActList'] != null) {
      _secKillActList = [];
      json['seckillActList'].forEach((v) {
        _secKillActList?.add(SpikeItem.fromJson(v));
      });
    }
  }
  List<PositionItem>? _shopHomeTop;
  List<PositionItem>? _shopHomeMiddle;
  List<PositionItem>? _shopHome;
  List<GroupItem>? _groupActList;
  List<GoodItem>? _goodList;
  List<SpikeItem>? _secKillActList;
  ShopHomeModel copyWith({
    List<PositionItem>? shopHomeTop,
    List<PositionItem>? shopHomeMiddle,
    List<PositionItem>? shopHome,
    List<GroupItem>? groupActList,
    List<GoodItem>? goodList,
    List<SpikeItem>? secKillActList,
  }) =>
      ShopHomeModel(
        shopHomeTop: shopHomeTop ?? _shopHomeTop,
        shopHomeMiddle: shopHomeMiddle ?? _shopHomeMiddle,
        shopHome: shopHome ?? _shopHome,
        groupActList: groupActList ?? _groupActList,
        goodList: goodList ?? _goodList,
        secKillActList: secKillActList ?? _secKillActList,
      );
  List<PositionItem>? get shopHomeTop => _shopHomeTop;
  List<PositionItem>? get shopHomeMiddle => _shopHomeMiddle;
  List<PositionItem>? get shopHome => _shopHome;
  List<GroupItem>? get groupActList => _groupActList;
  List<GoodItem>? get goodList => _goodList;
  List<SpikeItem>? get secKillActList => _secKillActList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_shopHomeTop != null) {
      map['shopHomeTop'] = _shopHomeTop?.map((v) => v.toJson()).toList();
    }
    if (_shopHomeMiddle != null) {
      map['shopHomeMiddle'] = _shopHomeMiddle?.map((v) => v.toJson()).toList();
    }
    if (_shopHome != null) {
      map['shopHome'] = _shopHome?.map((v) => v.toJson()).toList();
    }
    if (_groupActList != null) {
      map['groupActList'] = _groupActList?.map((v) => v.toJson()).toList();
    }
    if (_goodList != null) {
      map['goodList'] = _goodList?.map((v) => v.toJson()).toList();
    }
    if (_secKillActList != null) {
      map['seckillActList'] = _goodList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
