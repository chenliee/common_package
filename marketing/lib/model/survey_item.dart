/// id : 0
/// imgUrl : [{"fileId":0,"hash":"string"}]
/// name : "問卷"
/// startAt : "2023-07-06T06:34:25.378Z"
/// endAt : "2023-08-06T06:34:25.378Z"
/// status : "PUBLISHED"
/// questionInfo : [{"id":0,"imgUrl":[{"fileId":0,"hash":"string"}],"type":"SINGLE","name":"問題主題","description":"問題描述","sort":1,"required":true,"optionInfo":[{"id":0,"imgUrl":[{"fileId":0,"hash":"string"}],"name":"選項名稱","sort":1}]}]
/// gift : [{"id":0,"name":"贈品名稱","type":"coupon","rule":{"coupon":0,"score":0,"goods":{"goodsId":0,"attrIds":["string"]}},"imgUrl":[{"fileId":0,"hash":"string"}],"count":0,"isLimit":true,"limit":0,"content":"string","explain":"string"}]

class SurveyItem {
  SurveyItem({
    num? id,
    List<ImgUrl>? imgUrl,
    String? name,
    String? startAt,
    String? endAt,
    String? status,
    List<QuestionInfo>? questionInfo,
    List<Gift>? gift,
  }) {
    _id = id;
    _imgUrl = imgUrl;
    _name = name;
    _startAt = startAt;
    _endAt = endAt;
    _status = status;
    _questionInfo = questionInfo;
    _gift = gift;
  }

  SurveyItem.fromJson(dynamic json) {
    _id = json['survey']['id'];
    if (json['survey']['imgUrl'] != null) {
      _imgUrl = [];
      json['survey']['imgUrl'].forEach((v) {
        _imgUrl?.add(ImgUrl.fromJson(v));
      });
    }
    _name = json['survey']['name'];
    _startAt = json['survey']['startAt'];
    _endAt = json['survey']['endAt'];
    _status = json['survey']['status'];
    if (json['survey']['question'] != null) {
      _questionInfo = [];
      json['survey']['question'].forEach((v) {
        _questionInfo?.add(QuestionInfo.fromJson(v));
      });
    }
    if (json['gifts'] != null) {
      _gift = [];
      json['gifts'].forEach((v) {
        _gift?.add(Gift.fromJson(v));
      });
    }
  }
  num? _id;
  List<ImgUrl>? _imgUrl;
  String? _name;
  String? _startAt;
  String? _endAt;
  String? _status;
  List<QuestionInfo>? _questionInfo;
  List<Gift>? _gift;
  SurveyItem copyWith({
    num? id,
    List<ImgUrl>? imgUrl,
    String? name,
    String? startAt,
    String? endAt,
    String? status,
    List<QuestionInfo>? questionInfo,
    List<Gift>? gift,
  }) =>
      SurveyItem(
        id: id ?? _id,
        imgUrl: imgUrl ?? _imgUrl,
        name: name ?? _name,
        startAt: startAt ?? _startAt,
        endAt: endAt ?? _endAt,
        status: status ?? _status,
        questionInfo: questionInfo ?? _questionInfo,
        gift: gift ?? _gift,
      );
  num? get id => _id;
  List<ImgUrl>? get imgUrl => _imgUrl;
  String? get name => _name;
  String? get startAt => _startAt;
  String? get endAt => _endAt;
  String? get status => _status;
  List<QuestionInfo>? get questionInfo => _questionInfo;
  List<Gift>? get gift => _gift;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_imgUrl != null) {
      map['imgUrl'] = _imgUrl?.map((v) => v.toJson()).toList();
    }
    map['name'] = _name;
    map['startAt'] = _startAt;
    map['endAt'] = _endAt;
    map['status'] = _status;
    if (_questionInfo != null) {
      map['question'] = _questionInfo?.map((v) => v.toJson()).toList();
    }
    if (_gift != null) {
      map['gifts'] = _gift?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 0
/// name : "贈品名稱"
/// type : "coupon"
/// rule : {"coupon":0,"score":0,"goods":{"goodsId":0,"attrIds":["string"]}}
/// imgUrl : [{"fileId":0,"hash":"string"}]
/// count : 0
/// isLimit : true
/// limit : 0
/// content : "string"
/// explain : "string"

class Gift {
  Gift({
    num? id,
    String? name,
    String? type,
    Rule? rule,
    List<ImgUrl>? imgUrl,
    num? count,
    bool? isLimit,
    num? limit,
    String? content,
    String? explain,
  }) {
    _id = id;
    _name = name;
    _type = type;
    _rule = rule;
    _imgUrl = imgUrl;
    _count = count;
    _isLimit = isLimit;
    _limit = limit;
    _content = content;
    _explain = explain;
  }

  Gift.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _type = json['type'];
    _rule = json['rule'] != null ? Rule.fromJson(json['rule']) : null;
    if (json['imgUrl'] != null) {
      _imgUrl = [];
      json['imgUrl'].forEach((v) {
        _imgUrl?.add(ImgUrl.fromJson(v));
      });
    }
    _count = json['count'];
    _isLimit = json['isLimit'];
    _limit = json['limit'];
    _content = json['content'];
    _explain = json['explain'];
  }
  num? _id;
  String? _name;
  String? _type;
  Rule? _rule;
  List<ImgUrl>? _imgUrl;
  num? _count;
  bool? _isLimit;
  num? _limit;
  String? _content;
  String? _explain;
  Gift copyWith({
    num? id,
    String? name,
    String? type,
    Rule? rule,
    List<ImgUrl>? imgUrl,
    num? count,
    bool? isLimit,
    num? limit,
    String? content,
    String? explain,
  }) =>
      Gift(
        id: id ?? _id,
        name: name ?? _name,
        type: type ?? _type,
        rule: rule ?? _rule,
        imgUrl: imgUrl ?? _imgUrl,
        count: count ?? _count,
        isLimit: isLimit ?? _isLimit,
        limit: limit ?? _limit,
        content: content ?? _content,
        explain: explain ?? _explain,
      );
  num? get id => _id;
  String? get name => _name;
  String? get type => _type;
  Rule? get rule => _rule;
  List<ImgUrl>? get imgUrl => _imgUrl;
  num? get count => _count;
  bool? get isLimit => _isLimit;
  num? get limit => _limit;
  String? get content => _content;
  String? get explain => _explain;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['type'] = _type;
    if (_rule != null) {
      map['rule'] = _rule?.toJson();
    }
    if (_imgUrl != null) {
      map['imgUrl'] = _imgUrl?.map((v) => v.toJson()).toList();
    }
    map['count'] = _count;
    map['isLimit'] = _isLimit;
    map['limit'] = _limit;
    map['content'] = _content;
    map['explain'] = _explain;
    return map;
  }
}

/// fileId : 0
/// hash : "string"

class ImgUrl {
  ImgUrl({
    num? fileId,
    String? hash,
  }) {
    _fileId = fileId;
    _hash = hash;
  }

  ImgUrl.fromJson(dynamic json) {
    _fileId = json['fileId'];
    _hash = json['hash'];
  }
  num? _fileId;
  String? _hash;
  ImgUrl copyWith({
    num? fileId,
    String? hash,
  }) =>
      ImgUrl(
        fileId: fileId ?? _fileId,
        hash: hash ?? _hash,
      );
  num? get fileId => _fileId;
  String? get hash => _hash;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fileId'] = _fileId;
    map['hash'] = _hash;
    return map;
  }
}

/// coupon : 0
/// score : 0
/// goods : {"goodsId":0,"attrIds":["string"]}

class Rule {
  Rule({
    num? coupon,
    num? score,
    Goods? goods,
  }) {
    _coupon = coupon;
    _score = score;
    _goods = goods;
  }

  Rule.fromJson(dynamic json) {
    _coupon = json['coupon'];
    _score = json['score'];
    _goods = json['goods'] != null ? Goods.fromJson(json['goods']) : null;
  }
  num? _coupon;
  num? _score;
  Goods? _goods;
  Rule copyWith({
    num? coupon,
    num? score,
    Goods? goods,
  }) =>
      Rule(
        coupon: coupon ?? _coupon,
        score: score ?? _score,
        goods: goods ?? _goods,
      );
  num? get coupon => _coupon;
  num? get score => _score;
  Goods? get goods => _goods;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['coupon'] = _coupon;
    map['score'] = _score;
    if (_goods != null) {
      map['goods'] = _goods?.toJson();
    }
    return map;
  }
}

/// goodsId : 0
/// attrIds : ["string"]

class Goods {
  Goods({
    num? goodsId,
    List<String>? attrIds,
  }) {
    _goodsId = goodsId;
    _attrIds = attrIds;
  }

  Goods.fromJson(dynamic json) {
    _goodsId = json['goodsId'];
    _attrIds = json['attrIds'] != null ? json['attrIds'].cast<String>() : [];
  }
  num? _goodsId;
  List<String>? _attrIds;
  Goods copyWith({
    num? goodsId,
    List<String>? attrIds,
  }) =>
      Goods(
        goodsId: goodsId ?? _goodsId,
        attrIds: attrIds ?? _attrIds,
      );
  num? get goodsId => _goodsId;
  List<String>? get attrIds => _attrIds;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['goodsId'] = _goodsId;
    map['attrIds'] = _attrIds;
    return map;
  }
}

/// id : 0
/// imgUrl : [{"fileId":0,"hash":"string"}]
/// type : "SINGLE"
/// name : "問題主題"
/// description : "問題描述"
/// sort : 1
/// required : true
/// optionInfo : [{"id":0,"imgUrl":[{"fileId":0,"hash":"string"}],"name":"選項名稱","sort":1}]

class QuestionInfo {
  QuestionInfo({
    num? id,
    List<ImgUrl>? imgUrl,
    String? type,
    String? name,
    String? description,
    num? sort,
    bool? required,
    Map? format,
    List<OptionInfo>? optionInfo,
  }) {
    _id = id;
    _imgUrl = imgUrl;
    _type = type;
    _name = name;
    _description = description;
    _sort = sort;
    _required = required;
    _format = format;
    _optionInfo = optionInfo;
  }

  QuestionInfo.fromJson(dynamic json) {
    _id = json['id'];
    if (json['imgUrl'] != null) {
      _imgUrl = [];
      json['imgUrl'].forEach((v) {
        _imgUrl?.add(ImgUrl.fromJson(v));
      });
    }
    _type = json['type'];
    _name = json['name'];
    _description = json['description'];
    _sort = json['sort'];
    _required = json['required'];
    _format = json['format'];
    if (json['option'] != null) {
      _optionInfo = [];
      json['option'].forEach((v) {
        _optionInfo?.add(OptionInfo.fromJson(v));
      });
    }
  }
  num? _id;
  List<ImgUrl>? _imgUrl;
  String? _type;
  String? _name;
  String? _description;
  num? _sort;
  bool? _required;
  Map? _format;
  List<OptionInfo>? _optionInfo;
  QuestionInfo copyWith({
    num? id,
    List<ImgUrl>? imgUrl,
    String? type,
    String? name,
    String? description,
    num? sort,
    bool? required,
    Map? format,
    List<OptionInfo>? optionInfo,
  }) =>
      QuestionInfo(
        id: id ?? _id,
        imgUrl: imgUrl ?? _imgUrl,
        type: type ?? _type,
        name: name ?? _name,
        description: description ?? _description,
        sort: sort ?? _sort,
        required: required ?? _required,
        format: format ?? _format,
        optionInfo: optionInfo ?? _optionInfo,
      );
  num? get id => _id;
  List<ImgUrl>? get imgUrl => _imgUrl;
  String? get type => _type;
  String? get name => _name;
  String? get description => _description;
  num? get sort => _sort;
  bool? get required => _required;
  Map? get format => _format;
  List<OptionInfo>? get optionInfo => _optionInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_imgUrl != null) {
      map['imgUrl'] = _imgUrl?.map((v) => v.toJson()).toList();
    }
    map['type'] = _type;
    map['name'] = _name;
    map['description'] = _description;
    map['sort'] = _sort;
    map['required'] = _required;
    map['format'] = _format;
    if (_optionInfo != null) {
      map['option'] = _optionInfo?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 0
/// imgUrl : [{"fileId":0,"hash":"string"}]
/// name : "選項名稱"
/// sort : 1

class OptionInfo {
  OptionInfo({
    String? label,
    String? value,
  }) {
    _label = label;
    _value = value;
  }

  OptionInfo.fromJson(dynamic json) {
    _label = json['label'];
    _value = json['value'].toString();
  }
  String? _label;
  String? _value;
  OptionInfo copyWith({
    String? label,
    String? value,
  }) =>
      OptionInfo(
        label: label ?? _label,
        value: value ?? _value,
      );
  String? get value => _value;
  String? get label => _label;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = _label;
    map['value'] = _value;
    return map;
  }
}
