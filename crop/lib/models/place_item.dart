class PlaceItem {
  String? code;
  String? title;
  String? address;
  String? remark;
  List<WorkingHours>? workingHours;
  String? lat;
  String? lng;
  Brand? brand;
  Files? files;
  List<Contacts>? contacts;

  PlaceItem(
      {this.code,
        this.title,
        this.address,
        this.remark,
        this.workingHours,
        this.lat,
        this.lng,
        this.brand,
        this.files,
        this.contacts});

  PlaceItem.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    title = json['title'];
    address = json['address'];
    remark = json['remark'];
    if (json['workingHours'] != null) {
      workingHours = <WorkingHours>[];
      json['workingHours'].forEach((v) {
        workingHours!.add(WorkingHours.fromJson(v));
      });
    }
    lat = json['lat'];
    lng = json['lng'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    files = json['files'] != null ? Files.fromJson(json['files']) : null;
    if (json['contacts'] != null) {
      contacts = <Contacts>[];
      json['contacts'].forEach((v) {
        contacts!.add(new Contacts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['title'] = this.title;
    data['address'] = this.address;
    data['remark'] = this.remark;
    if (this.workingHours != null) {
      data['workingHours'] = this.workingHours!.map((v) => v.toJson()).toList();
    }
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    if (this.brand != null) {
      data['brand'] = this.brand!.toJson();
    }
    if (this.files != null) {
      data['files'] = this.files!.toJson();
    }
    if (this.contacts != null) {
      data['contacts'] = this.contacts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WorkingHours {
  int? id;
  int? placeId;
  String? period;
  int? day;
  int? from;
  int? to;
  String? desc;
  dynamic remark;
  String? createdAt;
  String? updatedAt;

  WorkingHours(
      {this.id,
        this.placeId,
        this.period,
        this.day,
        this.from,
        this.to,
        this.desc,
        this.remark,
        this.createdAt,
        this.updatedAt});

  WorkingHours.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    placeId = json['placeId'];
    period = json['period'];
    day = json['day'];
    from = json['from'];
    to = json['to'];
    desc = json['desc'];
    remark = json['remark'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['placeId'] = this.placeId;
    data['period'] = this.period;
    data['day'] = this.day;
    data['from'] = this.from;
    data['to'] = this.to;
    data['desc'] = this.desc;
    data['remark'] = this.remark;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class Brand {
  String? code;
  String? title;
  int? index;

  Brand({this.code, this.title, this.index});

  Brand.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    title = json['title'];
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['title'] = this.title;
    data['index'] = this.index;
    return data;
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

class Contacts {
  int? id;
  String? title;
  String? type;
  String? value;
  dynamic format;
  dynamic i18n;
  String? createdAt;
  String? updatedAt;

  Contacts(
      {this.id,
        this.title,
        this.type,
        this.value,
        this.format,
        this.i18n,
        this.createdAt,
        this.updatedAt});

  Contacts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    value = json['value'];
    format = json['format'];
    i18n = json['i18n'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['type'] = this.type;
    data['value'] = this.value;
    data['format'] = this.format;
    data['i18n'] = this.i18n;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
