import 'dart:convert';
/// busId : "83ad5141a3ce4dbd"
/// busPath : [{"id":0,"order":0,"branch":"51"},{"id":746,"code":"A-zhuhai2","order":1,"branch":"B0000011"},{"id":754,"code":"A-zhuhai4","order":2,"branch":"B0000822"},{"id":755,"code":"A-zhuhai5","order":3,"branch":"B0000013"},{"id":756,"code":"A-zhuhai6","order":4,"branch":"B1000014"}]
/// busRoute : "1"
/// defaultService : ["1723534973206:TUICHG0001","1723534973206:TUICHG0001+TUICHG0201+aHO1Sq6wke:00003"]

PackageConfig packageConfigFromJson(String str) => PackageConfig.fromJson(json.decode(str));
String packageConfigToJson(PackageConfig data) => json.encode(data.toJson());
class PackageConfig {
  PackageConfig({
      String? busId, 
      List<BusPath>? busPath, 
      String? busRoute, 
      List<String>? defaultService,}){
    _busId = busId;
    _busPath = busPath;
    _busRoute = busRoute;
    _defaultService = defaultService;
}

  PackageConfig.fromJson(dynamic json) {
    _busId = json['busId'];
    if (json['busPath'] != null) {
      _busPath = [];
      json['busPath'].forEach((v) {
        _busPath?.add(BusPath.fromJson(v));
      });
    }
    _busRoute = json['busRoute'];
    _defaultService = json['defaultService'] != null ? json['defaultService'].cast<String>() : [];
  }
  String? _busId;
  List<BusPath>? _busPath;
  String? _busRoute;
  List<String>? _defaultService;

  String? get busId => _busId;
  List<BusPath>? get busPath => _busPath;
  String? get busRoute => _busRoute;
  List<String>? get defaultService => _defaultService;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['busId'] = _busId;
    if (_busPath != null) {
      map['busPath'] = _busPath?.map((v) => v.toJson()).toList();
    }
    map['busRoute'] = _busRoute;
    map['defaultService'] = _defaultService;
    return map;
  }

}

/// id : 0
/// order : 0
/// branch : "51"

BusPath busPathFromJson(String str) => BusPath.fromJson(json.decode(str));
String busPathToJson(BusPath data) => json.encode(data.toJson());
class BusPath {
  BusPath({
      num? id, 
      num? order, 
      String? branch,}){
    _id = id;
    _order = order;
    _branch = branch;
}

  BusPath.fromJson(dynamic json) {
    _id = json['id'];
    _order = json['order'];
    _branch = json['branch'];
  }
  num? _id;
  num? _order;
  String? _branch;

  num? get id => _id;
  num? get order => _order;
  String? get branch => _branch;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['order'] = _order;
    map['branch'] = _branch;
    return map;
  }

}