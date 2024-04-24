import 'dart:convert';

/// code : "B01"
/// title : "優品店"
/// address : "提督馬路14-14C 祐順工業大廈1樓A"
/// remark : null
/// workingHours : [{"id":553,"placeId":220,"period":"daily","day":0,"from":660,"to":1380,"desc":"11:00-23:00","remark":null,"createdAt":"2023-09-21T06:49:21.391Z","updatedAt":"2023-09-21T06:49:21.391Z"}]
/// lat : "22.206374"
/// lng : "113.553178"
/// brand : {"code":"yp","title":"优品","index":0}
/// contacts : [{"id":295,"title":"移動電話","type":"mobile","value":"66666666","format":null,"i18n":null,"createdAt":"2024-03-02T01:01:41.692Z","updatedAt":"2024-03-02T01:01:41.692Z"},{"id":294,"title":"固定電話","type":"tel","value":"65676077","format":null,"i18n":null,"createdAt":"2024-02-29T08:31:08.865Z","updatedAt":"2024-02-29T08:31:08.865Z"}]
/// distance : 0.44527796351749394
/// infos : {"is_pick":{"title":"是否提货点","multiple":false,"value":true}}

PlaceItem placeItemFromJson(String str) => PlaceItem.fromJson(json.decode(str));
String placeItemToJson(PlaceItem data) => json.encode(data.toJson());

class PlaceItem {
  PlaceItem({
    String? code,
    String? title,
    String? address,
    dynamic remark,
    List<WorkingHours>? workingHours,
    String? lat,
    String? lng,
    Brand? brand,
    List<Contacts>? contacts,
    num? distance,
    Infos? infos,
    Files? files,
  }) {
    _code = code;
    _title = title;
    _address = address;
    _remark = remark;
    _workingHours = workingHours;
    _lat = lat;
    _lng = lng;
    _brand = brand;
    _contacts = contacts;
    _distance = distance;
    _infos = infos;
    _files = files;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceItem &&
          runtimeType == other.runtimeType &&
          _code == other._code &&
          _address == other._address;

  @override
  int get hashCode => _code.hashCode ^ _address.hashCode;

  PlaceItem.fromJson(dynamic json) {
    _code = json['code'];
    _title = json['title'];
    _address = json['address'];
    _remark = json['remark'];
    if (json['workingHours'] != null) {
      _workingHours = [];
      json['workingHours'].forEach((v) {
        _workingHours?.add(WorkingHours.fromJson(v));
      });
    }
    _lat = json['lat'];
    _lng = json['lng'];
    _brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    if (json['contacts'] != null) {
      _contacts = [];
      json['contacts'].forEach((v) {
        _contacts?.add(Contacts.fromJson(v));
      });
    }
    _distance = json['distance'];
    _infos = json['infos'] != null ? Infos.fromJson(json['infos']) : null;
    _files = json['files'] != null ? Files.fromJson(json['files']) : null;
  }
  String? _code;
  String? _title;
  String? _address;
  dynamic _remark;
  List<WorkingHours>? _workingHours;
  String? _lat;
  String? _lng;
  Brand? _brand;
  List<Contacts>? _contacts;
  num? _distance;
  Infos? _infos;
  Files? _files;
  PlaceItem copyWith({
    String? code,
    String? title,
    String? address,
    dynamic remark,
    List<WorkingHours>? workingHours,
    String? lat,
    String? lng,
    Brand? brand,
    List<Contacts>? contacts,
    num? distance,
    Infos? infos,
    Files? files,
  }) =>
      PlaceItem(
        code: code ?? _code,
        title: title ?? _title,
        address: address ?? _address,
        remark: remark ?? _remark,
        workingHours: workingHours ?? _workingHours,
        lat: lat ?? _lat,
        lng: lng ?? _lng,
        brand: brand ?? _brand,
        contacts: contacts ?? _contacts,
        distance: distance ?? _distance,
        infos: infos ?? _infos,
        files: files ?? _files,
      );
  String? get code => _code;
  String? get title => _title;
  String? get address => _address;
  dynamic get remark => _remark;
  List<WorkingHours>? get workingHours => _workingHours;
  String? get lat => _lat;
  String? get lng => _lng;
  Brand? get brand => _brand;
  List<Contacts>? get contacts => _contacts;
  num? get distance => _distance;
  Infos? get infos => _infos;
  Files? get files => _files;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['title'] = _title;
    map['address'] = _address;
    map['remark'] = _remark;
    if (_workingHours != null) {
      map['workingHours'] = _workingHours?.map((v) => v.toJson()).toList();
    }
    map['lat'] = _lat;
    map['lng'] = _lng;
    if (_brand != null) {
      map['brand'] = _brand?.toJson();
    }
    if (_contacts != null) {
      map['contacts'] = _contacts?.map((v) => v.toJson()).toList();
    }
    map['distance'] = _distance;
    if (_infos != null) {
      map['infos'] = _infos?.toJson();
    }
    if (_files != null) {
      map['files'] = _files?.toJson();
    }
    return map;
  }
}

/// is_pick : {"title":"是否提货点","multiple":false,"value":true}

Infos infosFromJson(String str) => Infos.fromJson(json.decode(str));
String infosToJson(Infos data) => json.encode(data.toJson());

class Infos {
  Infos({
    Info? isPick,
    Info? desc,
    Info? about,
    Info? nearSchool,
  }) {
    _isPick = isPick;
    _desc = desc;
    _about = about;
    _nearSchool = nearSchool;
  }

  Infos.fromJson(dynamic json) {
    _isPick = json['is_pick'] != null ? Info.fromJson(json['is_pick']) : null;
    _desc = json['desc'] != null ? Info.fromJson(json['desc']) : null;
    _about = json['about'] != null ? Info.fromJson(json['about']) : null;
    _nearSchool =
        json['nearSchool'] != null ? Info.fromJson(json['nearSchool']) : null;
  }
  Info? _isPick;
  Info? _desc;
  Info? _about;
  Info? _nearSchool;
  Infos copyWith({
    Info? isPick,
    Info? desc,
    Info? about,
    Info? nearSchool,
  }) =>
      Infos(
        isPick: isPick ?? _isPick,
        desc: desc ?? _desc,
        about: about ?? _about,
        nearSchool: nearSchool ?? _nearSchool,
      );
  Info? get isPick => _isPick;
  Info? get desc => _desc;
  Info? get about => _about;
  Info? get nearSchool => _nearSchool;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_isPick != null) {
      map['is_pick'] = _isPick?.toJson();
    }
    if (_desc != null) {
      map['desc'] = _desc?.toJson();
    }
    if (_about != null) {
      map['about'] = _about?.toJson();
    }
    if (_nearSchool != null) {
      map['nearSchool'] = _nearSchool?.toJson();
    }
    return map;
  }
}

/// title : "是否提货点"
/// multiple : false
/// value : true

Info isPickFromJson(String str) => Info.fromJson(json.decode(str));
String isPickToJson(Info data) => json.encode(data.toJson());

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

/// id : 295
/// title : "移動電話"
/// type : "mobile"
/// value : "66666666"
/// format : null
/// i18n : null
/// createdAt : "2024-03-02T01:01:41.692Z"
/// updatedAt : "2024-03-02T01:01:41.692Z"

Contacts contactsFromJson(String str) => Contacts.fromJson(json.decode(str));
String contactsToJson(Contacts data) => json.encode(data.toJson());

class Contacts {
  Contacts({
    num? id,
    String? title,
    String? type,
    String? value,
    dynamic format,
    dynamic i18n,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _title = title;
    _type = type;
    _value = value;
    _format = format;
    _i18n = i18n;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Contacts.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _type = json['type'];
    _value = json['value'];
    _format = json['format'];
    _i18n = json['i18n'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _title;
  String? _type;
  String? _value;
  dynamic _format;
  dynamic _i18n;
  String? _createdAt;
  String? _updatedAt;
  Contacts copyWith({
    num? id,
    String? title,
    String? type,
    String? value,
    dynamic format,
    dynamic i18n,
    String? createdAt,
    String? updatedAt,
  }) =>
      Contacts(
        id: id ?? _id,
        title: title ?? _title,
        type: type ?? _type,
        value: value ?? _value,
        format: format ?? _format,
        i18n: i18n ?? _i18n,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get title => _title;
  String? get type => _type;
  String? get value => _value;
  dynamic get format => _format;
  dynamic get i18n => _i18n;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['type'] = _type;
    map['value'] = _value;
    map['format'] = _format;
    map['i18n'] = _i18n;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}

/// code : "yp"
/// title : "优品"
/// index : 0

Brand brandFromJson(String str) => Brand.fromJson(json.decode(str));
String brandToJson(Brand data) => json.encode(data.toJson());

class Brand {
  Brand({
    String? code,
    String? title,
    num? index,
  }) {
    _code = code;
    _title = title;
    _index = index;
  }

  Brand.fromJson(dynamic json) {
    _code = json['code'];
    _title = json['title'];
    _index = json['index'];
  }
  String? _code;
  String? _title;
  num? _index;
  Brand copyWith({
    String? code,
    String? title,
    num? index,
  }) =>
      Brand(
        code: code ?? _code,
        title: title ?? _title,
        index: index ?? _index,
      );
  String? get code => _code;
  String? get title => _title;
  num? get index => _index;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['title'] = _title;
    map['index'] = _index;
    return map;
  }
}

/// id : 553
/// placeId : 220
/// period : "daily"
/// day : 0
/// from : 660
/// to : 1380
/// desc : "11:00-23:00"
/// remark : null
/// createdAt : "2023-09-21T06:49:21.391Z"
/// updatedAt : "2023-09-21T06:49:21.391Z"

WorkingHours workingHoursFromJson(String str) =>
    WorkingHours.fromJson(json.decode(str));
String workingHoursToJson(WorkingHours data) => json.encode(data.toJson());

class WorkingHours {
  WorkingHours({
    num? id,
    num? placeId,
    String? period,
    int? day,
    num? from,
    num? to,
    String? desc,
    dynamic remark,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _placeId = placeId;
    _period = period;
    _day = day;
    _from = from;
    _to = to;
    _desc = desc;
    _remark = remark;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  WorkingHours.fromJson(dynamic json) {
    _id = json['id'];
    _placeId = json['placeId'];
    _period = json['period'];
    _day = json['day'];
    _from = json['from'];
    _to = json['to'];
    _desc = json['desc'];
    _remark = json['remark'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _placeId;
  String? _period;
  int? _day;
  num? _from;
  num? _to;
  String? _desc;
  dynamic _remark;
  String? _createdAt;
  String? _updatedAt;
  WorkingHours copyWith({
    num? id,
    num? placeId,
    String? period,
    int? day,
    num? from,
    num? to,
    String? desc,
    dynamic remark,
    String? createdAt,
    String? updatedAt,
  }) =>
      WorkingHours(
        id: id ?? _id,
        placeId: placeId ?? _placeId,
        period: period ?? _period,
        day: day ?? _day,
        from: from ?? _from,
        to: to ?? _to,
        desc: desc ?? _desc,
        remark: remark ?? _remark,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  num? get placeId => _placeId;
  String? get period => _period;
  int? get day => _day;
  num? get from => _from;
  num? get to => _to;
  String? get desc => _desc;
  dynamic get remark => _remark;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['placeId'] = _placeId;
    map['period'] = _period;
    map['day'] = _day;
    map['from'] = _from;
    map['to'] = _to;
    map['desc'] = _desc;
    map['remark'] = _remark;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}

class Files {
  Cover? cover;

  Files({this.cover});

  Files.fromJson(Map<String, dynamic> json) {
    cover = json['cover'] != null ? new Cover.fromJson(json['cover']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cover != null) {
      data['cover'] = this.cover!.toJson();
    }
    return data;
  }
}

class Cover {
  String? title;
  bool? multiple;
  dynamic desc;
  Value? value;

  Cover({this.title, this.multiple, this.desc, this.value});

  Cover.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    multiple = json['multiple'];
    desc = json['desc'];
    value = json['value'] != null ? new Value.fromJson(json['value']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['multiple'] = this.multiple;
    data['desc'] = this.desc;
    if (this.value != null) {
      data['value'] = this.value!.toJson();
    }
    return data;
  }
}

class Value {
  int? id;
  String? url;
  String? mime;
  String? name;
  String? size;
  String? hash;

  Value({this.id, this.url, this.mime, this.name, this.size, this.hash});

  Value.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    mime = json['mime'];
    name = json['name'];
    size = json['size'];
    hash = json['hash'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['mime'] = this.mime;
    data['name'] = this.name;
    data['size'] = this.size;
    data['hash'] = this.hash;
    return data;
  }
}
