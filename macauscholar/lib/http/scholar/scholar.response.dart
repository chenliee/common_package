// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/macauscholar.dart';
import 'package:storage/storage.dart';
import 'package:member/member.dart';

class ScholarResponse {
  static Future<HomeModel> getHomeData() async {
    try {
      HomeModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/get_home_data",
      );
      item = HomeModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<WelfareModel> getWelfareData() async {
    try {
      WelfareModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/welfare/data",
      );
      item = WelfareModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<AdvertModel> getAdvert(
      {required String position, String? brand, String? xLocation}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "position": position,
        "brand": brand,
      })
        ..removeWhere((key, value) => value == null);

      Map<String, dynamic> data = Map.from({
        "x-location": xLocation,
      })
        ..removeWhere((key, value) => value == null);

      AdvertModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/place/advert/",
        params: params,
        data: data,
      );
      item = AdvertModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<ShopHomeModel> getShopHomeData() async {
    try {
      ShopHomeModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/shop/home/data",
      );
      item = ShopHomeModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<TuitionModel> getTuitionData() async {
    try {
      TuitionModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/tuition/data",
      );
      item = TuitionModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<RecommendModel> getRecommendData() async {
    try {
      RecommendModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/recommend/advert/data",
      );
      item = RecommendModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<CourseModel> getCourseData() async {
    try {
      CourseModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/course/data",
      );
      item = CourseModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<CatalogItem>> getPhotoList(
      {required String group,
      required String name,
      num? page,
      num? size}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "group": group,
        "name": name,
        "page": page,
        "size": size,
      })
        ..removeWhere((key, value) => value == null);

      List<CatalogItem> list = [];
      List<dynamic> jsonLists = await ScholarDio.getInstance().get(
        url: "/api/scholar/photo/list",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(CatalogItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<RelationshipItem> addScholar(
      {required String displayName,
      required String gender,
      required String phone,
      required String birthday,
      required String userId,
      required num typeId}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "displayName": displayName,
        "gender": gender,
        "phone": phone,
        "birthday": birthday,
        "userId": userId,
        "typeId": typeId,
      })
        ..removeWhere((key, value) => value == null);

      RelationshipItem? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().post(
        url: "/api/scholar/user/scholar",
        params: params,
      );
      item = RelationshipItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<ScholarItem>> getScholarList() async {
    try {
      Map<String, dynamic> params = Map.from({
        "type": "scholar",
      })
        ..removeWhere((key, value) => value == null);

      List<ScholarItem> list = [];
      List<dynamic> jsonLists = await ScholarDio.getInstance().get(
        url: "/api/scholar/user/relationShip",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(ScholarItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<StudentItem>> getStudentList() async {
    try {
      Map<String, dynamic> params = Map.from({
        "type": "student",
      })
        ..removeWhere((key, value) => value == null);

      List<StudentItem> list = [];
      List<dynamic> jsonLists = await ScholarDio.getInstance().get(
        url: "/api/scholar/user/relationShip",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(StudentItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<IdentityModel> getUserIdentity() async {
    try {
      IdentityModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/user/userIdentity",
      );
      item = IdentityModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<ParentItem>> getParentList(
      {required String type, required String user}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "type": type,
        "user": user,
      })
        ..removeWhere((key, value) => value == null);

      List<ParentItem> list = [];
      List<dynamic> jsonLists = await ScholarDio.getInstance().get(
        url: "/api/scholar/user/studentParent",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(ParentItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<RelationshipItem> unbindParent(
      {required String userToSn, required String userSn}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "userToSn": userToSn,
        "userSn": userSn,
      })
        ..removeWhere((key, value) => value == null);

      RelationshipItem? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().post(
        url: "/api/scholar/user/unbindStudentParent",
        params: params,
      );
      item = RelationshipItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<UserGradeModel> getUserGrade({required String sn}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "sn": sn,
      })
        ..removeWhere((key, value) => value == null);

      UserGradeModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/user/userGrade",
        params: params,
      );
      item = UserGradeModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<LearnCenterModel> getLearnCenterData(
      {required DateTime date, required String id}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "date": date,
        "id": id,
      })
        ..removeWhere((key, value) => value == null);

      LearnCenterModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/tuition/learnCenterData",
        params: params,
      );
      item = LearnCenterModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<LessonItem>> getStudentLesson({required String id}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "id": id,
      })
        ..removeWhere((key, value) => value == null);

      List<LessonItem> list = [];
      List<dynamic> jsonLists = await ScholarDio.getInstance().get(
        url: "/api/scholar/course/studentLesson",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(LessonItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<DiscountClassModel>> getDiscountClass() async {
    try {
      List<DiscountClassModel> list = [];
      List<dynamic> jsonLists = await ScholarDio.getInstance().get(
        url: "/api/scholar/course/discountClass",
      );
      for (var item in jsonLists) {
        list.add(DiscountClassModel.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<LessonItem>> getClassLesson(
      {required List<num> ids}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "id": ids,
      })
        ..removeWhere((key, value) => value == null);

      List<LessonItem> list = [];
      List<dynamic> jsonLists = await ScholarDio.getInstance().get(
        url: "/api/scholar/course/classLesson",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(LessonItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
