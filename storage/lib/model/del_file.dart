import 'dart:convert';
/// id : 370
/// provider : "minio"
/// projectId : 1
/// catalogId : 33
/// name : "CAP8219780274891466560.jpg"
/// hash : "a7c7886d13a838a31658dfb4088ec1965146b59973bf0c3a3049207ae33e0a6c"
/// ext : ".jpg"
/// mime : "application/octet-stream"
/// state : "COMPLETED"
/// size : "805744"
/// extra : null
/// path : "a7c7886d13a838a31658dfb4088ec1965146b59973bf0c3a3049207ae33e0a6c_CAP8219780274891466560.jpg"
/// upload : {"etag":"c223d25d4a6910203a50031fa39b635b","size":805744,"metaData":{"content-type":"application/octet-stream"},"versionId":null,"lastModified":"2024-07-11T05:25:41.000Z"}
/// createdAt : "2024-07-11T05:25:41.753Z"
/// updatedAt : "2024-07-11T05:25:41.753Z"

DelFile delFileFromJson(String str) => DelFile.fromJson(json.decode(str));
String delFileToJson(DelFile data) => json.encode(data.toJson());
class DelFile {
  DelFile({
      num? id, 
      String? provider, 
      num? projectId, 
      num? catalogId, 
      String? name, 
      String? hash, 
      String? ext, 
      String? mime, 
      String? state, 
      String? size, 
      dynamic extra, 
      String? path, 
      Upload? upload, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _provider = provider;
    _projectId = projectId;
    _catalogId = catalogId;
    _name = name;
    _hash = hash;
    _ext = ext;
    _mime = mime;
    _state = state;
    _size = size;
    _extra = extra;
    _path = path;
    _upload = upload;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  DelFile.fromJson(dynamic json) {
    _id = json['id'];
    _provider = json['provider'];
    _projectId = json['projectId'];
    _catalogId = json['catalogId'];
    _name = json['name'];
    _hash = json['hash'];
    _ext = json['ext'];
    _mime = json['mime'];
    _state = json['state'];
    _size = json['size'];
    _extra = json['extra'];
    _path = json['path'];
    _upload = json['upload'] != null ? Upload.fromJson(json['upload']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _provider;
  num? _projectId;
  num? _catalogId;
  String? _name;
  String? _hash;
  String? _ext;
  String? _mime;
  String? _state;
  String? _size;
  dynamic _extra;
  String? _path;
  Upload? _upload;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get provider => _provider;
  num? get projectId => _projectId;
  num? get catalogId => _catalogId;
  String? get name => _name;
  String? get hash => _hash;
  String? get ext => _ext;
  String? get mime => _mime;
  String? get state => _state;
  String? get size => _size;
  dynamic get extra => _extra;
  String? get path => _path;
  Upload? get upload => _upload;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['provider'] = _provider;
    map['projectId'] = _projectId;
    map['catalogId'] = _catalogId;
    map['name'] = _name;
    map['hash'] = _hash;
    map['ext'] = _ext;
    map['mime'] = _mime;
    map['state'] = _state;
    map['size'] = _size;
    map['extra'] = _extra;
    map['path'] = _path;
    if (_upload != null) {
      map['upload'] = _upload?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// etag : "c223d25d4a6910203a50031fa39b635b"
/// size : 805744
/// metaData : {"content-type":"application/octet-stream"}
/// versionId : null
/// lastModified : "2024-07-11T05:25:41.000Z"

Upload uploadFromJson(String str) => Upload.fromJson(json.decode(str));
String uploadToJson(Upload data) => json.encode(data.toJson());
class Upload {
  Upload({
      String? etag, 
      num? size, 
      MetaData? metaData, 
      dynamic versionId, 
      String? lastModified,}){
    _etag = etag;
    _size = size;
    _metaData = metaData;
    _versionId = versionId;
    _lastModified = lastModified;
}

  Upload.fromJson(dynamic json) {
    _etag = json['etag'];
    _size = json['size'];
    _metaData = json['metaData'] != null ? MetaData.fromJson(json['metaData']) : null;
    _versionId = json['versionId'];
    _lastModified = json['lastModified'];
  }
  String? _etag;
  num? _size;
  MetaData? _metaData;
  dynamic _versionId;
  String? _lastModified;

  String? get etag => _etag;
  num? get size => _size;
  MetaData? get metaData => _metaData;
  dynamic get versionId => _versionId;
  String? get lastModified => _lastModified;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['etag'] = _etag;
    map['size'] = _size;
    if (_metaData != null) {
      map['metaData'] = _metaData?.toJson();
    }
    map['versionId'] = _versionId;
    map['lastModified'] = _lastModified;
    return map;
  }

}

/// content-type : "application/octet-stream"

MetaData metaDataFromJson(String str) => MetaData.fromJson(json.decode(str));
String metaDataToJson(MetaData data) => json.encode(data.toJson());
class MetaData {
  MetaData({
      String? contenttype,}){
    _contenttype = contenttype;
}

  MetaData.fromJson(dynamic json) {
    _contenttype = json['content-type'];
  }
  String? _contenttype;

  String? get contenttype => _contenttype;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['content-type'] = _contenttype;
    return map;
  }

}