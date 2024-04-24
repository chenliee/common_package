import 'dart:convert';

/// id : 1761
/// merchantId : 2
/// uid : "608987524999737694"
/// name : "美式咖啡（大杯）"
/// barcode : "2023071800003"
/// desc : ""
/// links : {"pospal":["608987524999737694"]}
/// infos : {"sell_price":{"title":"零售價","multiple":false,"value":3300},"instock":{"title":"是否銷售","multiple":false,"value":true}}
/// files : {"cover":{"title":"封面","multiple":false,"desc":"商品、分類的封面","value":{"id":249,"url":"https://storage.heyday-catering.com/saas-servicehub/public/4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282_2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","mime":"image/jpeg","name":"2b582336-4c06-4eb3-9018-6ba9c375084d.jpg","size":"325329","hash":"4fc74853c1874dbba94dc1b9f9a2dbc7d4bbd3bef53e8373f2fd63b074201282"}}}
/// attrs : [{"code":"1680148323496109019","title":"丸作双倍加料","id":9,"desc":null,"options":[{"id":21,"code":"1680148323521209458","desc":"抹茶麻糬×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":22,"code":"1680148323521243370","desc":"桂花丸×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":26,"code":"1680148323521275546","desc":"黑糖丸×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":30,"code":"1680148323521338765","desc":"OREO×2","ext":{"isDefault":0,"attributeValue":"6"},"value":600},{"id":43,"code":"1680148323521491772","desc":"嫩仙草×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":46,"code":"1680148323521530285","desc":"寒天×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":48,"code":"1680148323521556814","desc":"QQ小芋圓×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":60,"code":"1680148323521660470","desc":"丸仨×2","ext":{"isDefault":0,"attributeValue":"18"},"value":1800},{"id":62,"code":"1680148323521663143","desc":"季節限定丸×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":66,"code":"1680148323521776630","desc":"可可麻糬×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":77,"code":"1680148323521841817","desc":"白玉丸×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":76,"code":"1680148323521923932","desc":"芝士×2","ext":{"isDefault":0,"attributeValue":"18"},"value":1800},{"id":81,"code":"1680148323521958478","desc":"明治牛乳麻糬×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":84,"code":"1680148323535659877","desc":"麻糬×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":90,"code":"1686551937668595639","desc":"常規","ext":{"isDefault":0,"attributeValue":"0"},"value":0}]},{"code":"1680148323496377283","title":"大苑子加料","id":12,"desc":null,"options":[{"id":1,"code":"1680148323514296406","desc":"仙草","ext":{"isDefault":0,"attributeValue":"4"},"value":400},{"id":3,"code":"1680148323516781570","desc":"奇亞籽","ext":{"isDefault":0,"attributeValue":"4"},"value":400},{"id":4,"code":"1680148323518664691","desc":"椰果","ext":{"isDefault":0,"attributeValue":"4"},"value":400},{"id":2,"code":"1680148323519142607","desc":"小晶球","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":5,"code":"1680148323520566939","desc":"椰凍","ext":{"isDefault":0,"attributeValue":"4"},"value":400},{"id":13,"code":"1680148323521190477","desc":"珍珠","ext":{"isDefault":0,"attributeValue":"3"},"value":300},{"id":16,"code":"1680148323521205624","desc":"轉綠研","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":29,"code":"1680148323521341043","desc":"愛玉凍","ext":{"isDefault":0,"attributeValue":"3"},"value":300},{"id":35,"code":"1680148323521401661","desc":"蘆薈","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":38,"code":"1680148323521412369","desc":"轉鮮奶","ext":{"isDefault":0,"attributeValue":"4"},"value":400},{"id":53,"code":"1680148323521582053","desc":"芋圓","ext":{"isDefault":0,"attributeValue":"4"},"value":400},{"id":56,"code":"1680148323521609444","desc":"奶蓋","ext":{"isDefault":0,"attributeValue":"6"},"value":600},{"id":89,"code":"1683363939834563448","desc":"脆波波","ext":{"isDefault":0,"attributeValue":"4"},"value":400},{"id":91,"code":"1686552116531345538","desc":"常規","ext":{"isDefault":0,"attributeValue":"0"},"value":0}]},{"code":"1680148323496458153","title":"丸作加料","id":13,"desc":null,"options":[{"id":7,"code":"1680148323521137871","desc":"QQ小芋圓","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":17,"code":"1680148323521186234","desc":"烏龍茶底","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":14,"code":"1680148323521194639","desc":"明治牛乳麻糬","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":18,"code":"1680148323521206325","desc":"寒天","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":19,"code":"1680148323521206764","desc":"丸仨","ext":{"isDefault":0,"attributeValue":"9"},"value":900},{"id":24,"code":"1680148323521288000","desc":"芝士","ext":{"isDefault":0,"attributeValue":"9"},"value":900},{"id":25,"code":"1680148323521325560","desc":"黑糖丸","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":31,"code":"1680148323521357647","desc":"桂花丸","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":37,"code":"1680148323521407330","desc":"綠茶底","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":41,"code":"1680148323521427955","desc":"季節限定丸","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":40,"code":"1680148323521436260","desc":"紅茶底","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":44,"code":"1680148323521483152","desc":"OREO","ext":{"isDefault":0,"attributeValue":"3"},"value":300},{"id":54,"code":"1680148323521591194","desc":"可可麻糬","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":68,"code":"1680148323521717726","desc":"轉鮮奶","ext":{"isDefault":0,"attributeValue":"3"},"value":300},{"id":63,"code":"1680148323521741795","desc":"抹茶麻糬","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":67,"code":"1680148323521806031","desc":"青茶底","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":70,"code":"1680148323521810620","desc":"白玉丸","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":71,"code":"1680148323521812296","desc":"嫩仙草","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":74,"code":"1680148323521823509","desc":"麻糬","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":75,"code":"1680148323521834525","desc":"轉燕麥奶","ext":{"isDefault":0,"attributeValue":"5"},"value":500},{"id":88,"code":"1686551779273497974","desc":"常規","ext":{"isDefault":0,"attributeValue":"0"},"value":0}]},{"code":"1680148323496812524","title":"丸作溫度","id":15,"desc":null,"options":[{"id":10,"code":"1680148323521139535","desc":"正常冰","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":34,"code":"1680148323521371499","desc":"熱飲","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":51,"code":"1680148323521578975","desc":"溫","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":52,"code":"1680148323521589196","desc":"去冰","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":72,"code":"1680148323521813064","desc":"少冰","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":73,"code":"1680148323521823124","desc":"微冰","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":79,"code":"1680148323521934073","desc":"多冰","ext":{"isDefault":0,"attributeValue":"0"},"value":0}]},{"code":"1680148323496521160","title":"丸作甜度","id":16,"desc":null,"options":[{"id":9,"code":"1680148323521159219","desc":"全糖","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":27,"code":"1680148323521278244","desc":"微糖","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":32,"code":"1680148323521357874","desc":"少糖","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":39,"code":"1680148323521418796","desc":"半糖","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":50,"code":"1680148323521577643","desc":"無糖","ext":{"isDefault":0,"attributeValue":"0"},"value":0},{"id":69,"code":"1680148323521793949","desc":"多糖","ext":{"isDefault":0,"attributeValue":"0"},"value":0}]}]

class GoodItem {
  GoodItem({
    num? id,
    num? merchantId,
    String? uid,
    String? name,
    String? barcode,
    String? desc,
    Links? links,
    Infos? infos,
    Files? files,
    List<Attrs>? attrs,
  }) {
    _id = id;
    _merchantId = merchantId;
    _uid = uid;
    _name = name;
    _barcode = barcode;
    _desc = desc;
    _links = links;
    _infos = infos;
    _files = files;
    _attrs = attrs;
  }


  @override
  String toString() {
    return 'GoodItem{_name: $_name}';
  }

  GoodItem.fromJson(dynamic json) {
    _id = json['id'];
    _merchantId = json['merchantId'];
    _uid = json['uid'];
    _name = json['name'];
    _barcode = json['barcode'];
    _desc = json['desc'];
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
    _infos = json['infos'] != null ? Infos.fromJson(json['infos']) : null;
    _files = json['files'] != null ? Files.fromJson(json['files']) : null;
    if (json['attrs'] != null) {
      _attrs = [];
      json['attrs'].forEach((v) {
        _attrs?.add(Attrs.fromJson(v));
      });
    }
  }
  num? _id;
  num? _merchantId;
  String? _uid;
  String? _name;
  String? _barcode;
  String? _desc;
  Links? _links;
  Infos? _infos;
  Files? _files;
  List<Attrs>? _attrs;
  GoodItem copyWith({
    num? id,
    num? merchantId,
    String? uid,
    String? name,
    String? barcode,
    String? desc,
    Links? links,
    Infos? infos,
    Files? files,
    List<Attrs>? attrs,
  }) =>
      GoodItem(
        id: id ?? _id,
        merchantId: merchantId ?? _merchantId,
        uid: uid ?? _uid,
        name: name ?? _name,
        barcode: barcode ?? _barcode,
        desc: desc ?? _desc,
        links: links ?? _links,
        infos: infos ?? _infos,
        files: files ?? _files,
        attrs: attrs ?? _attrs,
      );
  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get uid => _uid;
  String? get name => _name;
  String? get barcode => _barcode;
  String? get desc => _desc;
  Links? get links => _links;
  Infos? get infos => _infos;
  Files? get files => _files;
  List<Attrs>? get attrs => _attrs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['merchantId'] = _merchantId;
    map['uid'] = _uid;
    map['name'] = _name;
    map['barcode'] = _barcode;
    map['desc'] = _desc;
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    if (_infos != null) {
      map['infos'] = _infos?.toJson();
    }
    if (_files != null) {
      map['files'] = _files?.toJson();
    }
    if (_attrs != null) {
      map['attrs'] = _attrs?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// code : "1680148323496109019"
/// title : "丸作双倍加料"
/// id : 9
/// desc : null
/// options : [{"id":21,"code":"1680148323521209458","desc":"抹茶麻糬×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":22,"code":"1680148323521243370","desc":"桂花丸×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":26,"code":"1680148323521275546","desc":"黑糖丸×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":30,"code":"1680148323521338765","desc":"OREO×2","ext":{"isDefault":0,"attributeValue":"6"},"value":600},{"id":43,"code":"1680148323521491772","desc":"嫩仙草×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":46,"code":"1680148323521530285","desc":"寒天×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":48,"code":"1680148323521556814","desc":"QQ小芋圓×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":60,"code":"1680148323521660470","desc":"丸仨×2","ext":{"isDefault":0,"attributeValue":"18"},"value":1800},{"id":62,"code":"1680148323521663143","desc":"季節限定丸×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":66,"code":"1680148323521776630","desc":"可可麻糬×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":77,"code":"1680148323521841817","desc":"白玉丸×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":76,"code":"1680148323521923932","desc":"芝士×2","ext":{"isDefault":0,"attributeValue":"18"},"value":1800},{"id":81,"code":"1680148323521958478","desc":"明治牛乳麻糬×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":84,"code":"1680148323535659877","desc":"麻糬×2","ext":{"isDefault":0,"attributeValue":"10"},"value":1000},{"id":90,"code":"1686551937668595639","desc":"常規","ext":{"isDefault":0,"attributeValue":"0"},"value":0}]

class Attrs {
  Attrs({
    String? code,
    String? title,
    num? id,
    dynamic desc,
    List<Options>? options,
  }) {
    _code = code;
    _title = title;
    _id = id;
    _desc = desc;
    _options = options;
  }

  Attrs.fromJson(dynamic json) {
    _code = json['code'];
    _title = json['title'];
    _id = json['id'];
    _desc = json['desc'];
    if (json['options'] != null) {
      _options = [];
      json['options'].forEach((v) {
        _options?.add(Options.fromJson(v));
      });
    }
  }
  String? _code;
  String? _title;
  num? _id;
  dynamic _desc;
  List<Options>? _options;
  Attrs copyWith({
    String? code,
    String? title,
    num? id,
    dynamic desc,
    List<Options>? options,
  }) =>
      Attrs(
        code: code ?? _code,
        title: title ?? _title,
        id: id ?? _id,
        desc: desc ?? _desc,
        options: options ?? _options,
      );
  String? get code => _code;
  String? get title => _title;
  num? get id => _id;
  dynamic get desc => _desc;
  List<Options>? get options => _options;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['title'] = _title;
    map['id'] = _id;
    map['desc'] = _desc;
    if (_options != null) {
      map['options'] = _options?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 21
/// code : "1680148323521209458"
/// desc : "抹茶麻糬×2"
/// ext : {"isDefault":0,"attributeValue":"10"}
/// value : 1000

class Options {
  Options({
    num? id,
    String? code,
    String? desc,
    Ext? ext,
    num? value,
  }) {
    _id = id;
    _code = code;
    _desc = desc;
    _ext = ext;
    _value = value;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Options &&
          runtimeType == other.runtimeType &&
          _id == other._id &&
          _code == other._code;

  @override
  int get hashCode => _id.hashCode ^ _code.hashCode;

  Options.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _desc = json['desc'];
    _ext = json['ext'] != null ? Ext.fromJson(json['ext']) : null;
    _value = json['value'];
  }
  num? _id;
  String? _code;
  String? _desc;
  Ext? _ext;
  num? _value;
  Options copyWith({
    num? id,
    String? code,
    String? desc,
    Ext? ext,
    num? value,
  }) =>
      Options(
        id: id ?? _id,
        code: code ?? _code,
        desc: desc ?? _desc,
        ext: ext ?? _ext,
        value: value ?? _value,
      );
  num? get id => _id;
  String? get code => _code;
  String? get desc => _desc;
  Ext? get ext => _ext;
  num? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['desc'] = _desc;
    if (_ext != null) {
      map['ext'] = _ext?.toJson();
    }
    map['value'] = _value;
    return map;
  }
}

/// isDefault : 0
/// attributeValue : "10"

class Ext {
  Ext({
    String? isDefault,
    String? attributeValue,
  }) {
    _isDefault = isDefault;
    _attributeValue = attributeValue;
  }

  Ext.fromJson(dynamic json) {
    _isDefault = json['isDefault'].toString();
    _attributeValue = json['attributeValue'];
  }
  String? _isDefault;
  String? _attributeValue;
  Ext copyWith({
    String? isDefault,
    String? attributeValue,
  }) =>
      Ext(
        isDefault: isDefault ?? _isDefault,
        attributeValue: attributeValue ?? _attributeValue,
      );
  String? get isDefault => _isDefault;
  String? get attributeValue => _attributeValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isDefault'] = _isDefault;
    map['attributeValue'] = _attributeValue;
    return map;
  }
}

Files filesFromJson(String str) => Files.fromJson(json.decode(str));
String filesToJson(Files data) => json.encode(data.toJson());

class Files {
  Files({
    Cover? cover,
    Banner? banner,
  }) {
    _cover = cover;
    _banner = banner;
  }

  @override
  String toString() {
    return 'Files{_cover: $_cover}';
  }

  Files.fromJson(dynamic json) {
    _cover = json['cover'] != null ? Cover.fromJson(json['cover']) : null;
    _banner = json['banner'] != null ? Banner.fromJson(json['banner']) : null;
  }
  Cover? _cover;
  Banner? _banner;
  Files copyWith({
    Cover? cover,
    Banner? banner,
  }) =>
      Files(
        cover: cover ?? _cover,
        banner: banner ?? _banner,
      );
  Cover? get cover => _cover;
  Banner? get banner => _banner;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_cover != null) {
      map['cover'] = _cover?.toJson();
    }
    if (_banner != null) {
      map['banner'] = _banner?.toJson();
    }
    return map;
  }
}

/// title : "商品图集"
/// multiple : true
/// desc : ""
/// values : [{"id":4177,"url":"https://storage.dev.heyday-catering.com:20443/saas-service/public/2e853ef818ecc6df061930d12a243c3270d1c052d65120b8cdf54bc5ffeda9dc_%E5%84%92%E6%9E%97%E5%91%98%E5%B7%A5%E7%89%88code.png","mime":"image/png","name":"儒林员工版code.png","size":"29729","hash":"2e853ef818ecc6df061930d12a243c3270d1c052d65120b8cdf54bc5ffeda9dc"},{"id":4178,"url":"https://storage.dev.heyday-catering.com:20443/saas-service/public/5a8eab9e4aa8ac2b6217b6735787c93329f52d872f4735104a4cf94f39451dd9_%E5%84%92%E6%9E%97vip-2.png","mime":"image/png","name":"儒林vip-2.png","size":"75222","hash":"5a8eab9e4aa8ac2b6217b6735787c93329f52d872f4735104a4cf94f39451dd9"}]

Banner bannerFromJson(String str) => Banner.fromJson(json.decode(str));
String bannerToJson(Banner data) => json.encode(data.toJson());

class Banner {
  Banner({
    String? title,
    bool? multiple,
    String? desc,
    List<Values>? values,
  }) {
    _title = title;
    _multiple = multiple;
    _desc = desc;
    _values = values;
  }

  Banner.fromJson(dynamic json) {
    _title = json['title'];
    _multiple = json['multiple'];
    _desc = json['desc'];
    if (json['values'] != null) {
      _values = [];
      json['values'].forEach((v) {
        _values?.add(Values.fromJson(v));
      });
    }
  }
  String? _title;
  bool? _multiple;
  String? _desc;
  List<Values>? _values;
  Banner copyWith({
    String? title,
    bool? multiple,
    String? desc,
    List<Values>? values,
  }) =>
      Banner(
        title: title ?? _title,
        multiple: multiple ?? _multiple,
        desc: desc ?? _desc,
        values: values ?? _values,
      );
  String? get title => _title;
  bool? get multiple => _multiple;
  String? get desc => _desc;
  List<Values>? get values => _values;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['multiple'] = _multiple;
    map['desc'] = _desc;
    if (_values != null) {
      map['values'] = _values?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 4177
/// url : "https://storage.dev.heyday-catering.com:20443/saas-service/public/2e853ef818ecc6df061930d12a243c3270d1c052d65120b8cdf54bc5ffeda9dc_%E5%84%92%E6%9E%97%E5%91%98%E5%B7%A5%E7%89%88code.png"
/// mime : "image/png"
/// name : "儒林员工版code.png"
/// size : "29729"
/// hash : "2e853ef818ecc6df061930d12a243c3270d1c052d65120b8cdf54bc5ffeda9dc"

Values valuesFromJson(String str) => Values.fromJson(json.decode(str));
String valuesToJson(Values data) => json.encode(data.toJson());

class Values {
  Values({
    num? id,
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) {
    _id = id;
    _url = url;
    _mime = mime;
    _name = name;
    _size = size;
    _hash = hash;
  }

  Values.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _mime = json['mime'];
    _name = json['name'];
    _size = json['size'];
    _hash = json['hash'];
  }
  num? _id;
  String? _url;
  String? _mime;
  String? _name;
  String? _size;
  String? _hash;
  Values copyWith({
    num? id,
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) =>
      Values(
        id: id ?? _id,
        url: url ?? _url,
        mime: mime ?? _mime,
        name: name ?? _name,
        size: size ?? _size,
        hash: hash ?? _hash,
      );
  num? get id => _id;
  String? get url => _url;
  String? get mime => _mime;
  String? get name => _name;
  String? get size => _size;
  String? get hash => _hash;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['mime'] = _mime;
    map['name'] = _name;
    map['size'] = _size;
    map['hash'] = _hash;
    return map;
  }
}

/// title : "封面"
/// multiple : false
/// desc : "商品、分類的封面"
/// value : {"id":3139,"url":"https://storage.dev.heyday-catering.com:20443/saas-service/public/20fb8e7519a0525429c1f9e1fe0427ae99712320d0f8f82db45896fc11a98295_cdc1edbc-4590-46d7-a9b9-6d648bde8a52.png","mime":"image/png","name":"cdc1edbc-4590-46d7-a9b9-6d648bde8a52.png","size":"255131","hash":"20fb8e7519a0525429c1f9e1fe0427ae99712320d0f8f82db45896fc11a98295"}

Cover coverFromJson(String str) => Cover.fromJson(json.decode(str));
String coverToJson(Cover data) => json.encode(data.toJson());

class Cover {
  Cover({
    String? title,
    bool? multiple,
    String? desc,
    Value? value,
  }) {
    _title = title;
    _multiple = multiple;
    _desc = desc;
    _value = value;
  }

  Cover.fromJson(dynamic json) {
    _title = json['title'];
    _multiple = json['multiple'];
    _desc = json['desc'];
    _value = json['value'] != null ? Value.fromJson(json['value']) : null;
  }
  String? _title;
  bool? _multiple;
  String? _desc;
  Value? _value;
  Cover copyWith({
    String? title,
    bool? multiple,
    String? desc,
    Value? value,
  }) =>
      Cover(
        title: title ?? _title,
        multiple: multiple ?? _multiple,
        desc: desc ?? _desc,
        value: value ?? _value,
      );
  String? get title => _title;
  bool? get multiple => _multiple;
  String? get desc => _desc;
  Value? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['multiple'] = _multiple;
    map['desc'] = _desc;
    if (_value != null) {
      map['value'] = _value?.toJson();
    }
    return map;
  }
}

/// id : 3139
/// url : "https://storage.dev.heyday-catering.com:20443/saas-service/public/20fb8e7519a0525429c1f9e1fe0427ae99712320d0f8f82db45896fc11a98295_cdc1edbc-4590-46d7-a9b9-6d648bde8a52.png"
/// mime : "image/png"
/// name : "cdc1edbc-4590-46d7-a9b9-6d648bde8a52.png"
/// size : "255131"
/// hash : "20fb8e7519a0525429c1f9e1fe0427ae99712320d0f8f82db45896fc11a98295"

Value valueFromJson(String str) => Value.fromJson(json.decode(str));
String valueToJson(Value data) => json.encode(data.toJson());

class Value {
  Value({
    num? id,
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) {
    _id = id;
    _url = url;
    _mime = mime;
    _name = name;
    _size = size;
    _hash = hash;
  }

  Value.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _mime = json['mime'];
    _name = json['name'];
    _size = json['size'];
    _hash = json['hash'];
  }
  num? _id;
  String? _url;
  String? _mime;
  String? _name;
  String? _size;
  String? _hash;
  Value copyWith({
    num? id,
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) =>
      Value(
        id: id ?? _id,
        url: url ?? _url,
        mime: mime ?? _mime,
        name: name ?? _name,
        size: size ?? _size,
        hash: hash ?? _hash,
      );
  num? get id => _id;
  String? get url => _url;
  String? get mime => _mime;
  String? get name => _name;
  String? get size => _size;
  String? get hash => _hash;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['mime'] = _mime;
    map['name'] = _name;
    map['size'] = _size;
    map['hash'] = _hash;
    return map;
  }
}

/// sell_price : {"title":"零售價","multiple":false,"value":3300}
/// instock : {"title":"是否銷售","multiple":false,"value":true}

class Infos {
  Infos({
    Info? sellPrice,
    Info? instock,
    Info? monthSales,
    Info? monthSale,
    Info? stock,
    Info? online,
  }) {
    _sellPrice = sellPrice;
    _instock = instock;
    _monthSales = monthSales;
    _monthSale = monthSale;
    _stock = stock;
    _online = online;
  }

  Infos.fromJson(dynamic json) {
    _sellPrice =
        json['sell_price'] != null ? Info.fromJson(json['sell_price']) : null;
    _instock = json['instock'] != null ? Info.fromJson(json['instock']) : null;
    _stock = json['stock'] != null ? Info.fromJson(json['stock']) : null;
    _monthSales =
        json['month_sales'] != null ? Info.fromJson(json['month_sales']) : null;
    _monthSale =
        json['month_sale'] != null ? Info.fromJson(json['month_sale']) : null;
    _online = json['online'] != null ? Info.fromJson(json['online']) : null;
  }
  Info? _sellPrice;
  Info? _instock;
  Info? _monthSales;
  Info? _monthSale;
  Info? _stock;
  Info? _online;

  Infos copyWith({
    Info? sellPrice,
    Info? instock,
    Info? stock,
    Info? monthSales,
    Info? monthSale,
    Info? online,
  }) =>
      Infos(
          sellPrice: sellPrice ?? _sellPrice,
          instock: instock ?? _instock,
          stock: stock ?? _stock,
          online: online ?? _online,
          monthSales: monthSales ?? _monthSales,
          monthSale: monthSale ?? _monthSale);
  Info? get sellPrice => _sellPrice;
  Info? get instock => _instock;
  Info? get stock => _stock;
  Info? get monthSales => _monthSales;
  Info? get monthSale => _monthSale;
  Info? get online => _online;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_sellPrice != null) {
      map['sell_price'] = _sellPrice?.toJson();
    }
    if (_instock != null) {
      map['instock'] = _instock?.toJson();
    }
    if (_stock != null) {
      map['stock'] = _stock?.toJson();
    }
    if (_monthSales != null) {
      map['month_sales'] = _monthSales?.toJson();
    }
    if (_monthSale != null) {
      map['month_sale'] = _monthSale?.toJson();
    }
    if (_online != null) {
      map['online'] = _online?.toJson();
    }
    return map;
  }
}

/// title : "是否銷售"
/// multiple : false
/// value : true

class Info {
  Info({
    String? title,
    bool? multiple,
    dynamic value,
  }) {
    _title = title;
    _multiple = multiple;
    _value = value;
  }

  Info.fromJson(dynamic json) {
    _title = json['title'];
    _multiple = json['multiple'];
    _value = json['value'];
  }
  String? _title;
  bool? _multiple;
  dynamic _value;
  Info copyWith({
    String? title,
    bool? multiple,
    dynamic value,
  }) =>
      Info(
        title: title ?? _title,
        multiple: multiple ?? _multiple,
        value: value ?? _value,
      );
  String? get title => _title;
  bool? get multiple => _multiple;
  dynamic get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['multiple'] = _multiple;
    map['value'] = _value;
    return map;
  }
}

/// pospal : ["608987524999737694"]

class Links {
  Links({
    List<String>? pospal,
  }) {
    _pospal = pospal;
  }

  Links.fromJson(dynamic json) {
    _pospal = json['pospal'] != null ? json['pospal'].cast<String>() : [];
  }
  List<String>? _pospal;
  Links copyWith({
    List<String>? pospal,
  }) =>
      Links(
        pospal: pospal ?? _pospal,
      );
  List<String>? get pospal => _pospal;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pospal'] = _pospal;
    return map;
  }
}
