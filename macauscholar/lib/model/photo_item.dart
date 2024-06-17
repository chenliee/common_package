import 'dart:convert';
/// id : 8
/// projectId : 1
/// name : "吊圖集"
/// config : {"path":[0],"prefix":"photo"}
/// createdAt : "2024-06-14T08:41:55.323Z"
/// updatedAt : "2024-06-14T08:41:55.323Z"
/// deletedAt : null
/// files : {"cover":{"title":"封面","multiple":false,"desc":"放封面的地方","value":{"id":285,"url":"https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/ee4cedd6b73e1d2cd6b68b37501260e6202a7582a707be173666fe3816362790_643cf0a60d03f51b739a5914c3a0765.jpg","mime":"image/jpeg","name":"643cf0a60d03f51b739a5914c3a0765.jpg","size":"55508","hash":"ee4cedd6b73e1d2cd6b68b37501260e6202a7582a707be173666fe3816362790","path":"ee4cedd6b73e1d2cd6b68b37501260e6202a7582a707be173666fe3816362790_643cf0a60d03f51b739a5914c3a0765.jpg"}}}

PhotoItem photoItemFromJson(String str) => PhotoItem.fromJson(json.decode(str));
String photoItemToJson(PhotoItem data) => json.encode(data.toJson());
class PhotoItem {
  PhotoItem({
      num? id, 
      num? projectId, 
      String? name, 
      Config? config, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      Files? files,}){
    _id = id;
    _projectId = projectId;
    _name = name;
    _config = config;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _files = files;
}

  PhotoItem.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _name = json['name'];
    _config = json['config'] != null ? Config.fromJson(json['config']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _files = json['files'] != null ? Files.fromJson(json['files']) : null;
  }
  num? _id;
  num? _projectId;
  String? _name;
  Config? _config;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  Files? _files;
PhotoItem copyWith({  num? id,
  num? projectId,
  String? name,
  Config? config,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  Files? files,
}) => PhotoItem(  id: id ?? _id,
  projectId: projectId ?? _projectId,
  name: name ?? _name,
  config: config ?? _config,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  files: files ?? _files,
);
  num? get id => _id;
  num? get projectId => _projectId;
  String? get name => _name;
  Config? get config => _config;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  Files? get files => _files;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['name'] = _name;
    if (_config != null) {
      map['config'] = _config?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    if (_files != null) {
      map['files'] = _files?.toJson();
    }
    return map;
  }

}

/// cover : {"title":"封面","multiple":false,"desc":"放封面的地方","value":{"id":285,"url":"https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/ee4cedd6b73e1d2cd6b68b37501260e6202a7582a707be173666fe3816362790_643cf0a60d03f51b739a5914c3a0765.jpg","mime":"image/jpeg","name":"643cf0a60d03f51b739a5914c3a0765.jpg","size":"55508","hash":"ee4cedd6b73e1d2cd6b68b37501260e6202a7582a707be173666fe3816362790","path":"ee4cedd6b73e1d2cd6b68b37501260e6202a7582a707be173666fe3816362790_643cf0a60d03f51b739a5914c3a0765.jpg"}}

Files filesFromJson(String str) => Files.fromJson(json.decode(str));
String filesToJson(Files data) => json.encode(data.toJson());
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
/// desc : "放封面的地方"
/// value : {"id":285,"url":"https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/ee4cedd6b73e1d2cd6b68b37501260e6202a7582a707be173666fe3816362790_643cf0a60d03f51b739a5914c3a0765.jpg","mime":"image/jpeg","name":"643cf0a60d03f51b739a5914c3a0765.jpg","size":"55508","hash":"ee4cedd6b73e1d2cd6b68b37501260e6202a7582a707be173666fe3816362790","path":"ee4cedd6b73e1d2cd6b68b37501260e6202a7582a707be173666fe3816362790_643cf0a60d03f51b739a5914c3a0765.jpg"}

Cover coverFromJson(String str) => Cover.fromJson(json.decode(str));
String coverToJson(Cover data) => json.encode(data.toJson());
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

/// id : 285
/// url : "https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/ee4cedd6b73e1d2cd6b68b37501260e6202a7582a707be173666fe3816362790_643cf0a60d03f51b739a5914c3a0765.jpg"
/// mime : "image/jpeg"
/// name : "643cf0a60d03f51b739a5914c3a0765.jpg"
/// size : "55508"
/// hash : "ee4cedd6b73e1d2cd6b68b37501260e6202a7582a707be173666fe3816362790"
/// path : "ee4cedd6b73e1d2cd6b68b37501260e6202a7582a707be173666fe3816362790_643cf0a60d03f51b739a5914c3a0765.jpg"

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
      String? path,}){
    _id = id;
    _url = url;
    _mime = mime;
    _name = name;
    _size = size;
    _hash = hash;
    _path = path;
}

  Value.fromJson(dynamic json) {
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
Value copyWith({  num? id,
  String? url,
  String? mime,
  String? name,
  String? size,
  String? hash,
  String? path,
}) => Value(  id: id ?? _id,
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

/// path : [0]
/// prefix : "photo"

Config configFromJson(String str) => Config.fromJson(json.decode(str));
String configToJson(Config data) => json.encode(data.toJson());
class Config {
  Config({
      List<num>? path, 
      String? prefix,}){
    _path = path;
    _prefix = prefix;
}

  Config.fromJson(dynamic json) {
    _path = json['path'] != null ? json['path'].cast<num>() : [];
    _prefix = json['prefix'];
  }
  List<num>? _path;
  String? _prefix;
Config copyWith({  List<num>? path,
  String? prefix,
}) => Config(  path: path ?? _path,
  prefix: prefix ?? _prefix,
);
  List<num>? get path => _path;
  String? get prefix => _prefix;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['path'] = _path;
    map['prefix'] = _prefix;
    return map;
  }

}