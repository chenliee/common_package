import 'dart:convert';

import 'package:gold/gold.dart';
import 'package:macauscholar/macauscholar.dart';

/// teacherList : [{"id":74,"oldObjectId":"CUwuWda1gR","number":"DS0012","displayName":"IT測試","avatar":null,"gender":"m","phone":"system@heyday-catering.com","description":"知名導師 \n熱門推薦，\n具有豐富的教學經驗。","recommend":true,"strongPointSubject":null,"teachingDate":null,"achievements":null,"createdAt":"2024-06-24T03:16:52.661Z","updatedAt":"2024-07-05T06:29:54.860Z"},{"id":76,"oldObjectId":"JdyMQNlccs","number":"TA0001","displayName":"chaya","avatar":null,"gender":"f","phone":"1713786285@qq.com","description":"2022.7.22測試使用","recommend":true,"strongPointSubject":null,"teachingDate":null,"achievements":null,"createdAt":"2024-06-24T03:16:52.774Z","updatedAt":"2024-07-05T06:29:57.662Z"},{"id":78,"oldObjectId":"Kt2rIL7p7z","number":"TA001","displayName":"导师1号1","avatar":null,"gender":"f","phone":"312312312","description":"","recommend":true,"strongPointSubject":null,"teachingDate":null,"achievements":null,"createdAt":"2024-06-24T03:16:52.864Z","updatedAt":"2024-07-05T06:30:00.475Z"}]
/// categoryList : [{"id":131,"oldObjectId":null,"title":"幼儿","code":"VIDEO_YOUNG","description":"课程分类","cover":{"id":376,"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/courseCategory/d/ca07916bb170d4d7aaa87ea56f3b692a0ab8bcc98a9b299002b2904bd0597c56_ca07916bb170d4d7aaa87ea56f3b692a0ab8bcc98a9b299002b2904bd0597c56_222.png","hash":"ca07916bb170d4d7aaa87ea56f3b692a0ab8bcc98a9b299002b2904bd0597c56","mime":"image/png","name":"ca07916bb170d4d7aaa87ea56f3b692a0ab8bcc98a9b299002b2904bd0597c56_222.png","path":"ca07916bb170d4d7aaa87ea56f3b692a0ab8bcc98a9b299002b2904bd0597c56_ca07916bb170d4d7aaa87ea56f3b692a0ab8bcc98a9b299002b2904bd0597c56_222.png","size":"346874","token":"eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Mzc2LCJ1cmwiOiJodHRwczovL3N0b3JhZ2UuZGV2LmhleWRheS1jYXRlcmluZy5jb206MjA0NDMvc2Nob2xhci9jbXMvY291cnNlQ2F0ZWdvcnkvZC9jYTA3OTE2YmIxNzBkNGQ3YWFhODdlYTU2ZjNiNjkyYTBhYjhiY2M5OGE5YjI5OTAwMmIyOTA0YmQwNTk3YzU2X2NhMDc5MTZiYjE3MGQ0ZDdhYWE4N2VhNTZmM2I2OTJhMGFiOGJjYzk4YTliMjk5MDAyYjI5MDRiZDA1OTdjNTZfMjIyLnBuZyIsIm1pbWUiOiJpbWFnZS9wbmciLCJuYW1lIjoiY2EwNzkxNmJiMTcwZDRkN2FhYTg3ZWE1NmYzYjY5MmEwYWI4YmNjOThhOWIyOTkwMDJiMjkwNGJkMDU5N2M1Nl8yMjIucG5nIiwic2l6ZSI6IjM0Njg3NCIsImhhc2giOiJjYTA3OTE2YmIxNzBkNGQ3YWFhODdlYTU2ZjNiNjkyYTBhYjhiY2M5OGE5YjI5OTAwMmIyOTA0YmQwNTk3YzU2IiwicGF0aCI6ImNhMDc5MTZiYjE3MGQ0ZDdhYWE4N2VhNTZmM2I2OTJhMGFiOGJjYzk4YTliMjk5MDAyYjI5MDRiZDA1OTdjNTZfY2EwNzkxNmJiMTcwZDRkN2FhYTg3ZWE1NmYzYjY5MmEwYWI4YmNjOThhOWIyOTkwMDJiMjkwNGJkMDU5N2M1Nl8yMjIucG5nIiwiaWF0IjoxNzIwNzYyNTU4fQ.ewTmxsVpIlojuVxuhLj60raUMBK_475dkT-om6Tsro5gKt3Ejv6WWJ1MPIuY1WQJkH4KGert63FCOxBEIdMZcXHijQHt_HryX86VTFlNOIYJ3zb7pIqd1NUDKLgMzSSNAJlsKqttS3YYjwGvOaMrKdVrARt3sW62PTvofeYkePdQGuiHSD3zV_iEDvZQIrNB8mMJ_zEXVPPLzpj9dSXBmWDUSvV9QaLDQ33Kz5jzXF0r9JfqkWrVuoLIfZ4plbqau1UFS6-mrnbyQ1LYJ89m0Ml3eZZN6OJHIz_GtT2d9-uuCr6xiJqNdXKopmWKqiNh5IMzLCO_img2lla3oO0bQg"},"color":null,"parentId":130,"order":null,"oldMySQLID":null,"createdAt":"2024-07-12T05:35:36.049Z","updatedAt":"2024-07-12T05:36:17.381Z"},{"id":132,"oldObjectId":null,"title":"推荐","code":"VIDEO_B","description":null,"cover":{"id":377,"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/courseCategory/default/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","hash":"6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb","mime":"image/jpeg","name":"5.jpeg","path":"6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","size":"4218","token":"eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Mzc3LCJ1cmwiOiJodHRwczovL3N0b3JhZ2UuZGV2LmhleWRheS1jYXRlcmluZy5jb206MjA0NDMvc2Nob2xhci9jbXMvY291cnNlQ2F0ZWdvcnkvZGVmYXVsdC82YWQxYjM0ZTgyOTY1ODEzNjBlZGQyOTY3Y2ExYmFkMjU5ZWQ1NGZhYWJlNWRlMzExOGQyOGUxMTRhMmE2N2ZiXzUuanBlZyIsIm1pbWUiOiJpbWFnZS9qcGVnIiwibmFtZSI6IjUuanBlZyIsInNpemUiOiI0MjE4IiwiaGFzaCI6IjZhZDFiMzRlODI5NjU4MTM2MGVkZDI5NjdjYTFiYWQyNTllZDU0ZmFhYmU1ZGUzMTE4ZDI4ZTExNGEyYTY3ZmIiLCJwYXRoIjoiNmFkMWIzNGU4Mjk2NTgxMzYwZWRkMjk2N2NhMWJhZDI1OWVkNTRmYWFiZTVkZTMxMThkMjhlMTE0YTJhNjdmYl81LmpwZWciLCJpYXQiOjE3MjA3NjI2MTR9.k1YmHYH9uXL9hiWr4nQCwnLjUC3kE1ja-gUnJru0hYsdD74cEVvNQdRY-SSqN0XWe4B3PpuTXleqz85pn8zbVBKYDodOlu22n7E65Scog_DPe8eUVKCXkEuh7QeJ925ytDSGL6lMdA8Lrx2_0OqiAQaULJVXWRXF5ftZ55HKwR0mD8iOS5s4qvUTvAGGzY6PBJJ5iS0jhyg15TH9AW9Bf_9EB4YNg8m5s_lWwJ8PZJzE3TxqGcWsvv0CfG0hwG4j9K6jQ8Yndw6B1L-WlsnQhlvMxyTAES0X-2mmgKFtVrwl--bpitEl9ts9Vm5u9QbPRH4MsMi0PirdxNo7hMHSPg"},"color":null,"parentId":130,"order":null,"oldMySQLID":null,"createdAt":"2024-07-12T05:44:27.309Z","updatedAt":"2024-07-12T05:44:27.309Z"}]
/// bannerList : [{"id":164168,"bid":294448,"shopId":"home1","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/60af1ca7d5aa6705f6abbfc993cae1e2ebe95794978e455a5ddd3aaeb71960c7_home1.png"}},{"id":164169,"bid":294449,"shopId":"home2","adInfo":{"link":"/recommend/youngCourses","cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/1a82dd8c1c35fd9319107caa1f0d9d71ffbbaf94307ebd121fc0edcc4611fe65_home2.jpeg"}}]

StudyModel studyModelFromJson(String str) =>
    StudyModel.fromJson(json.decode(str));
String studyModelToJson(StudyModel data) => json.encode(data.toJson());

class StudyModel {
  StudyModel({
    List<TeacherItem>? teacherList,
    List<CategoryItem>? categoryList,
    List<PositionItem>? bannerList,
  }) {
    _teacherList = teacherList;
    _categoryList = categoryList;
    _bannerList = bannerList;
  }

  StudyModel.fromJson(dynamic json) {
    if (json['teacherList'] != null) {
      _teacherList = [];
      json['teacherList'].forEach((v) {
        _teacherList?.add(TeacherItem.fromJson(v));
      });
    }
    if (json['categoryList'] != null) {
      _categoryList = [];
      json['categoryList'].forEach((v) {
        _categoryList?.add(CategoryItem.fromJson(v));
      });
    }
    if (json['bannerList'] != null) {
      _bannerList = [];
      json['bannerList'].forEach((v) {
        _bannerList?.add(PositionItem.fromJson(v));
      });
    }
  }
  List<TeacherItem>? _teacherList;
  List<CategoryItem>? _categoryList;
  List<PositionItem>? _bannerList;
  StudyModel copyWith({
    List<TeacherItem>? teacherList,
    List<CategoryItem>? categoryList,
    List<PositionItem>? bannerList,
  }) =>
      StudyModel(
        teacherList: teacherList ?? _teacherList,
        categoryList: categoryList ?? _categoryList,
        bannerList: bannerList ?? _bannerList,
      );
  List<TeacherItem>? get teacherList => _teacherList;
  List<CategoryItem>? get categoryList => _categoryList;
  List<PositionItem>? get bannerList => _bannerList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_teacherList != null) {
      map['teacherList'] = _teacherList?.map((v) => v.toJson()).toList();
    }
    if (_categoryList != null) {
      map['categoryList'] = _categoryList?.map((v) => v.toJson()).toList();
    }
    if (_bannerList != null) {
      map['bannerList'] = _bannerList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
