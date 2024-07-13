import 'dart:convert';
/// id : 364
/// url : "https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/%E6%A0%A1%E5%9C%92/%E6%A0%A1%E5%9C%92/2d66a5a38aa25ab6654f1940203d027cc4d210ef6f42473e918db9f21cbe2118_444.png"
/// mime : "image/png"
/// name : "444.png"
/// size : "12440"
/// hash : "2d66a5a38aa25ab6654f1940203d027cc4d210ef6f42473e918db9f21cbe2118"
/// path : "校園/2d66a5a38aa25ab6654f1940203d027cc4d210ef6f42473e918db9f21cbe2118_444.png"
/// token : "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzY0LCJ1cmwiOiJodHRwczovL3N0b3JhZ2UuZGV2LmhleWRheS1jYXRlcmluZy5jb206MjA0NDMvc2Nob2xhci9lbGl0ZXNob3AvJUU2JUEwJUExJUU1JTlDJTkyLyVFNiVBMCVBMSVFNSU5QyU5Mi8yZDY2YTVhMzhhYTI1YWI2NjU0ZjE5NDAyMDNkMDI3Y2M0ZDIxMGVmNmY0MjQ3M2U5MThkYjlmMjFjYmUyMTE4XzQ0NC5wbmciLCJtaW1lIjoiaW1hZ2UvcG5nIiwibmFtZSI6IjQ0NC5wbmciLCJzaXplIjoiMTI0NDAiLCJoYXNoIjoiMmQ2NmE1YTM4YWEyNWFiNjY1NGYxOTQwMjAzZDAyN2NjNGQyMTBlZjZmNDI0NzNlOTE4ZGI5ZjIxY2JlMjExOCIsInBhdGgiOiLmoKHlnJIvMmQ2NmE1YTM4YWEyNWFiNjY1NGYxOTQwMjAzZDAyN2NjNGQyMTBlZjZmNDI0NzNlOTE4ZGI5ZjIxY2JlMjExOF80NDQucG5nIiwiaWF0IjoxNzIwNTE0MDg3fQ.JVHCqnLROPTP_kTnSl7snzrhhIDc7vA7fwsbjfDLkHbU3Ebcca_mhdUGEjR2fUHead1E9iyH-zWJpRns9CdW0w6nTCX6WC6Y48fZ70PUQKO7a8BoDSunfgp25mqabAZYLpOdjrd5GWZ61veE3zWjixlWqHqFnlYQj3pRvEDsoSf3GazI2szmT8nQYmn7G0JIRzCzJu3b4GoEioDPtC82CNvciiaFJiK-d55fsQAnjA4HZGxCjt_aVjWtemfI7OFJ8Bl0ZLyuwzeWMKsUjQbVddJyiTDC7LgzKLkzJpFHawkZHRcSn3d2HX7uuuVJ0QoCn5OMn2Gz_XFtGSI7NL13qA"

UploadImage uploadImageFromJson(String str) => UploadImage.fromJson(json.decode(str));
String uploadImageToJson(UploadImage data) => json.encode(data.toJson());
class UploadImage {
  UploadImage({
      num? id, 
      String? url, 
      String? mime, 
      String? name, 
      String? size, 
      String? hash, 
      String? path, 
      String? token,}){
    _id = id;
    _url = url;
    _mime = mime;
    _name = name;
    _size = size;
    _hash = hash;
    _path = path;
    _token = token;
}

  UploadImage.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _mime = json['mime'];
    _name = json['name'];
    _size = json['size'];
    _hash = json['hash'];
    _path = json['path'];
    _token = json['token'];
  }
  num? _id;
  String? _url;
  String? _mime;
  String? _name;
  String? _size;
  String? _hash;
  String? _path;
  String? _token;

  num? get id => _id;
  String? get url => _url;
  String? get mime => _mime;
  String? get name => _name;
  String? get size => _size;
  String? get hash => _hash;
  String? get path => _path;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['mime'] = _mime;
    map['name'] = _name;
    map['size'] = _size;
    map['hash'] = _hash;
    map['path'] = _path;
    map['token'] = _token;
    return map;
  }

}