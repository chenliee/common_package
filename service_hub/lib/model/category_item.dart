import 'good_item.dart';

/// id : 341
/// projectId : 5
/// parentId : 340
/// path : null
/// name : "127"
/// title : "日本零食和四洲零食"
/// index : 0
/// goods : [7659,7660,7661]
/// files : {"cover":{"title":"封面","multiple":true,"desc":"商品、分類的封面","values":[{"id":2419,"url":"https://storage.dev.heyday-catering.com:20443/service/public/a7963d4ee8369965011c70734319f198f1519ccb2cc0450071607f91cf3c972b_active-privilegebg.png","mime":"image/png","name":"active-privilegebg.png","size":"10861","hash":"a7963d4ee8369965011c70734319f198f1519ccb2cc0450071607f91cf3c972b"}]}}

class CategoryItem {
  CategoryItem({
    num? id,
    num? projectId,
    num? parentId,
    dynamic path,
    String? name,
    String? title,
    num? index,
    List<num>? goods,
    Files? files,
  }) {
    _id = id;
    _projectId = projectId;
    _parentId = parentId;
    _path = path;
    _name = name;
    _title = title;
    _index = index;
    _goods = goods;
    _files = files;
  }

  @override
  String toString() {
    return 'CategoryItem{_files: $_files}';
  }

  CategoryItem.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _parentId = json['parentId'];
    _path = json['path'];
    _name = json['name'];
    _title = json['title'];
    _index = json['index'];
    _goods = json['goods'] != null ? json['goods'].cast<num>() : [];
    _files = json['files'] != null ? Files.fromJson(json['files']) : null;
  }
  num? _id;
  num? _projectId;
  num? _parentId;
  dynamic _path;
  String? _name;
  String? _title;
  num? _index;
  List<num>? _goods;
  Files? _files;
  CategoryItem copyWith({
    num? id,
    num? projectId,
    num? parentId,
    dynamic path,
    String? name,
    String? title,
    num? index,
    List<num>? goods,
    Files? files,
  }) =>
      CategoryItem(
        id: id ?? _id,
        projectId: projectId ?? _projectId,
        parentId: parentId ?? _parentId,
        path: path ?? _path,
        name: name ?? _name,
        title: title ?? _title,
        index: index ?? _index,
        goods: goods ?? _goods,
        files: files ?? _files,
      );
  num? get id => _id;
  num? get projectId => _projectId;
  num? get parentId => _parentId;
  dynamic get path => _path;
  String? get name => _name;
  String? get title => _title;
  num? get index => _index;
  List<num>? get goods => _goods;
  Files? get files => _files;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['parentId'] = _parentId;
    map['path'] = _path;
    map['name'] = _name;
    map['title'] = _title;
    map['index'] = _index;
    map['goods'] = _goods;
    if (_files != null) {
      map['files'] = _files?.toJson();
    }
    return map;
  }
}
