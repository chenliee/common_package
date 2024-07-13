import 'dart:convert';
/// id : 364
/// url : "https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/%E6%A0%A1%E5%9C%92/%E6%A0%A1%E5%9C%92/2d66a5a38aa25ab6654f1940203d027cc4d210ef6f42473e918db9f21cbe2118_444.png"
/// mime : "image/png"
/// name : "444.png"
/// size : "12440"
/// hash : "2d66a5a38aa25ab6654f1940203d027cc4d210ef6f42473e918db9f21cbe2118"
/// path : "校園/2d66a5a38aa25ab6654f1940203d027cc4d210ef6f42473e918db9f21cbe2118_444.png"

CatalogKey catalogKeyFromJson(String str) => CatalogKey.fromJson(json.decode(str));
String catalogKeyToJson(CatalogKey data) => json.encode(data.toJson());
class CatalogKey {
  CatalogKey({
      num? id, 
      String? url, 
      String? mime, 
      String? name, 
      String? size, 
      String? hash, 
      String? path,}){
    _id = id;
    _url = url;
    _mime = mime;
    _name = name;
    _size = size;
    _hash = hash;
    _path = path;
}

  CatalogKey.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _mime = json['mime'];
    _name = json['name'];
    _size = json['size'];
    _hash = json['hash'];
    _path = json['path'];
  }
  num? _id;
  String? _url;
  String? _mime;
  String? _name;
  String? _size;
  String? _hash;
  String? _path;

  num? get id => _id;
  String? get url => _url;
  String? get mime => _mime;
  String? get name => _name;
  String? get size => _size;
  String? get hash => _hash;
  String? get path => _path;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['mime'] = _mime;
    map['name'] = _name;
    map['size'] = _size;
    map['hash'] = _hash;
    map['path'] = _path;
    return map;
  }

}