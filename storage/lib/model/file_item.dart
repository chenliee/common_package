import 'dart:convert';
/// id : 367
/// url : "https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/%E6%A0%A1%E5%9C%92/a20268b0f482089e25863fca32e588f424dab2305405610289262b33360f0cde_234fc892-a816-4a0a-9ab8-a675a1e42f292053500049482733944.jpg"
/// mime : "application/octet-stream"
/// name : "234fc892-a816-4a0a-9ab8-a675a1e42f292053500049482733944.jpg"
/// size : "5717970"
/// checked : false
/// hash : "a20268b0f482089e25863fca32e588f424dab2305405610289262b33360f0cde"
/// path : "a20268b0f482089e25863fca32e588f424dab2305405610289262b33360f0cde_234fc892-a816-4a0a-9ab8-a675a1e42f292053500049482733944.jpg"

FileItem fileItemFromJson(String str) => FileItem.fromJson(json.decode(str));
String fileItemToJson(FileItem data) => json.encode(data.toJson());
class FileItem {
  FileItem({
      num? id, 
      String? url, 
      String? mime, 
      String? name, 
      String? size, 
      bool? checked, 
      String? hash, 
      String? path,}){
    _id = id;
    _url = url;
    _mime = mime;
    _name = name;
    _size = size;
    _checked = checked;
    _hash = hash;
    _path = path;
}

  FileItem.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _mime = json['mime'];
    _name = json['name'];
    _size = json['size'];
    _checked = json['checked'];
    _hash = json['hash'];
    _path = json['path'];
  }
  num? _id;
  String? _url;
  String? _mime;
  String? _name;
  String? _size;
  bool? _checked;
  String? _hash;
  String? _path;

  num? get id => _id;
  String? get url => _url;
  String? get mime => _mime;
  String? get name => _name;
  String? get size => _size;
  bool? get checked => _checked;
  String? get hash => _hash;
  String? get path => _path;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['mime'] = _mime;
    map['name'] = _name;
    map['size'] = _size;
    map['checked'] = _checked;
    map['hash'] = _hash;
    map['path'] = _path;
    return map;
  }

}