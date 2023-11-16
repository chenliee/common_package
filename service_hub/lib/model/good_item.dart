/// id : 326
/// merchantId : 2
/// uid : "556542405925820957"
/// name : "鮮檸凍咖啡（大杯）"
/// barcode : "2023071800017"
/// desc : ""
/// links : {"pospal":["556542405925820957"]}
/// infos : {"sell_price":{"title":"零售價","multiple":false,"value":3700}}
/// files : {"cover":{"title":"封面","multiple":false,"desc":"商品、分類的封面","value":{"id":271,"url":"https://storage.uat.heyday-catering.com/service/public/284287f9db85023435a6923e5bec5c4e6928ace6a4112963362809fecf804bc5_6673003c-654c-4a29-8402-174a7ccc1720.jpg","mime":"image/jpeg","name":"6673003c-654c-4a29-8402-174a7ccc1720.jpg","size":"353241","hash":"284287f9db85023435a6923e5bec5c4e6928ace6a4112963362809fecf804bc5"}}}

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
      Files? files,}){
    _id = id;
    _merchantId = merchantId;
    _uid = uid;
    _name = name;
    _barcode = barcode;
    _desc = desc;
    _links = links;
    _infos = infos;
    _files = files;
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
GoodItem copyWith({  num? id,
  num? merchantId,
  String? uid,
  String? name,
  String? barcode,
  String? desc,
  Links? links,
  Infos? infos,
  Files? files,
}) => GoodItem(  id: id ?? _id,
  merchantId: merchantId ?? _merchantId,
  uid: uid ?? _uid,
  name: name ?? _name,
  barcode: barcode ?? _barcode,
  desc: desc ?? _desc,
  links: links ?? _links,
  infos: infos ?? _infos,
  files: files ?? _files,
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
    return map;
  }

}

/// cover : {"title":"封面","multiple":false,"desc":"商品、分類的封面","value":{"id":271,"url":"https://storage.uat.heyday-catering.com/service/public/284287f9db85023435a6923e5bec5c4e6928ace6a4112963362809fecf804bc5_6673003c-654c-4a29-8402-174a7ccc1720.jpg","mime":"image/jpeg","name":"6673003c-654c-4a29-8402-174a7ccc1720.jpg","size":"353241","hash":"284287f9db85023435a6923e5bec5c4e6928ace6a4112963362809fecf804bc5"}}

class Files {
  Files({
      Cover? cover,}){
    _cover = cover;
}

  Files.fromJson(dynamic json) {
    _cover = json['cover'] != null ? Cover.fromJson(json['cover']) : null;
  }
  Cover? _cover;
Files copyWith({  Cover? cover,
}) => Files(  cover: cover ?? _cover,
);
  Cover? get cover => _cover;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_cover != null) {
      map['cover'] = _cover?.toJson();
    }
    return map;
  }

}

/// title : "封面"
/// multiple : false
/// desc : "商品、分類的封面"
/// value : {"id":271,"url":"https://storage.uat.heyday-catering.com/service/public/284287f9db85023435a6923e5bec5c4e6928ace6a4112963362809fecf804bc5_6673003c-654c-4a29-8402-174a7ccc1720.jpg","mime":"image/jpeg","name":"6673003c-654c-4a29-8402-174a7ccc1720.jpg","size":"353241","hash":"284287f9db85023435a6923e5bec5c4e6928ace6a4112963362809fecf804bc5"}

class Cover {
  Cover({
      String? title, 
      bool? multiple, 
      String? desc, 
      Value? value,}){
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
Cover copyWith({  String? title,
  bool? multiple,
  String? desc,
  Value? value,
}) => Cover(  title: title ?? _title,
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

/// id : 271
/// url : "https://storage.uat.heyday-catering.com/service/public/284287f9db85023435a6923e5bec5c4e6928ace6a4112963362809fecf804bc5_6673003c-654c-4a29-8402-174a7ccc1720.jpg"
/// mime : "image/jpeg"
/// name : "6673003c-654c-4a29-8402-174a7ccc1720.jpg"
/// size : "353241"
/// hash : "284287f9db85023435a6923e5bec5c4e6928ace6a4112963362809fecf804bc5"

class Value {
  Value({
      num? id, 
      String? url, 
      String? mime, 
      String? name, 
      String? size, 
      String? hash,}){
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
Value copyWith({  num? id,
  String? url,
  String? mime,
  String? name,
  String? size,
  String? hash,
}) => Value(  id: id ?? _id,
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

/// sell_price : {"title":"零售價","multiple":false,"value":3700}

class Infos {
  Infos({
      SellPrice? sellPrice,}){
    _sellPrice = sellPrice;
}

  Infos.fromJson(dynamic json) {
    _sellPrice = json['sell_price'] != null ? SellPrice.fromJson(json['sell_price']) : null;
  }
  SellPrice? _sellPrice;
Infos copyWith({  SellPrice? sellPrice,
}) => Infos(  sellPrice: sellPrice ?? _sellPrice,
);
  SellPrice? get sellPrice => _sellPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_sellPrice != null) {
      map['sell_price'] = _sellPrice?.toJson();
    }
    return map;
  }

}

/// title : "零售價"
/// multiple : false
/// value : 3700

class SellPrice {
  SellPrice({
      String? title, 
      bool? multiple, 
      num? value,}){
    _title = title;
    _multiple = multiple;
    _value = value;
}

  SellPrice.fromJson(dynamic json) {
    _title = json['title'];
    _multiple = json['multiple'];
    _value = json['value'];
  }
  String? _title;
  bool? _multiple;
  num? _value;
SellPrice copyWith({  String? title,
  bool? multiple,
  num? value,
}) => SellPrice(  title: title ?? _title,
  multiple: multiple ?? _multiple,
  value: value ?? _value,
);
  String? get title => _title;
  bool? get multiple => _multiple;
  num? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['multiple'] = _multiple;
    map['value'] = _value;
    return map;
  }

}

/// pospal : ["556542405925820957"]

class Links {
  Links({
      List<String>? pospal,}){
    _pospal = pospal;
}

  Links.fromJson(dynamic json) {
    _pospal = json['pospal'] != null ? json['pospal'].cast<String>() : [];
  }
  List<String>? _pospal;
Links copyWith({  List<String>? pospal,
}) => Links(  pospal: pospal ?? _pospal,
);
  List<String>? get pospal => _pospal;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pospal'] = _pospal;
    return map;
  }

}