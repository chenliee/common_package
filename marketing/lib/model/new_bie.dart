import 'dart:convert';
/// isOpen : true
/// imgUrl : "https://storage.dev.heyday-catering.com:20443/saas-marketing/public/128d8621737c30aa197f5c0099df248e5729983741bce6268acbb815227e927c_128d8621737c30aa197f5c0099df248e5729983741bce6268acbb815227e927c_Slice_228@3x.png"

NewBie newBieFromJson(String str) => NewBie.fromJson(json.decode(str));
String newBieToJson(NewBie data) => json.encode(data.toJson());
class NewBie {
  NewBie({
      bool? isOpen, 
      String? imgUrl,}){
    _isOpen = isOpen;
    _imgUrl = imgUrl;
}

  NewBie.fromJson(dynamic json) {
    _isOpen = json['isOpen'];
    _imgUrl = json['imgUrl'];
  }
  bool? _isOpen;
  String? _imgUrl;
NewBie copyWith({  bool? isOpen,
  String? imgUrl,
}) => NewBie(  isOpen: isOpen ?? _isOpen,
  imgUrl: imgUrl ?? _imgUrl,
);
  bool? get isOpen => _isOpen;
  String? get imgUrl => _imgUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isOpen'] = _isOpen;
    map['imgUrl'] = _imgUrl;
    return map;
  }

}