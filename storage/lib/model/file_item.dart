import 'dart:convert';
/// id : 286
/// url : "https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/photo/macauscholar/e2bab8a9bdfb0275f0435a6e1b849b31f755475d8dd01ebaaa5c074ec6779173_ca07916bb170d4d7aaa87ea56f3b692a0ab8bcc98a9b299002b2904bd0597c56_ca07916bb170d4d7aaa87ea56f3b692a0ab8bcc98a9b299002b2904bd0597c56_222_%E5%89%AF%E6%9C%AC.png"
/// mime : "image/png"
/// name : "ca07916bb170d4d7aaa87ea56f3b692a0ab8bcc98a9b299002b2904bd0597c56_ca07916bb170d4d7aaa87ea56f3b692a0ab8bcc98a9b299002b2904bd0597c56_222_副本.png"
/// size : "1345301"
/// hash : "e2bab8a9bdfb0275f0435a6e1b849b31f755475d8dd01ebaaa5c074ec6779173"
/// path : "macauscholar/e2bab8a9bdfb0275f0435a6e1b849b31f755475d8dd01ebaaa5c074ec6779173_ca07916bb170d4d7aaa87ea56f3b692a0ab8bcc98a9b299002b2904bd0597c56_ca07916bb170d4d7aaa87ea56f3b692a0ab8bcc98a9b299002b2904bd0597c56_222_副本.png"

FileItem fileItemFromJson(String str) => FileItem.fromJson(json.decode(str));
String fileItemToJson(FileItem data) => json.encode(data.toJson());
class FileItem {
  FileItem({
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

  FileItem.fromJson(dynamic json) {
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
FileItem copyWith({  num? id,
  String? url,
  String? mime,
  String? name,
  String? size,
  String? hash,
  String? path,
}) => FileItem(  id: id ?? _id,
  url: url ?? _url,
  mime: mime ?? _mime,
  name: name ?? _name,
  size: size ?? _size,
  hash: hash ?? _hash,
  path: path ?? _path,
);
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