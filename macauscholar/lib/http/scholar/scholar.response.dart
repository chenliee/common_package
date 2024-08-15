// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:macauscholar/macauscholar.dart';
import 'package:marketing/marketing.dart';
import 'package:member/member.dart';
import 'package:order/model/pay_model.dart';
import 'package:service_package/service_package.dart';
import 'package:storage/storage.dart';

class ScholarResponse {
  static Future<HomeModel> getHomeData() async {
    try {
      HomeModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/home",
      );
      item = HomeModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<StudyModel> getStudyData() async {
    try {
      StudyModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/study",
      );
      item = StudyModel.fromJson(res);
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
        url: "/api/scholar/welfare",
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
        url: "/api/scholar/advert",
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
        url: "/api/scholar/shop/home",
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
        url: "/api/scholar/tuition",
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
        url: "/api/scholar/recommend",
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
        url: "/api/scholar/course",
      );
      item = CourseModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<CourseDetailModel> getCourseDetail({required String id}) async {
    try {
      CourseDetailModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/course/$id",
      );
      item = CourseDetailModel.fromJson(res);
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
        url: "/api/scholar/photoList",
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

  static Future<RelationModel> getRelations() async {
    try {
      RelationModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/user/relationShip",
      );
      item = RelationModel.fromJson(res);
      return item;
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

  static Future<List<User>> getUserListGrade(
      {required List<String> sns}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "sns": sns,
      })
        ..removeWhere((key, value) => value == null);

      List<User> list = [];
      List<dynamic> jsonLists = await ScholarDio.getInstance().get(
        url: "/api/scholar/user/userListGrade",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(User.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<ActivityItem>> getUserBadge({required String sn}) async {
    try {
      List<ActivityItem> list = [];
      List<dynamic> jsonLists = await ScholarDio.getInstance().get(
        url: "/api/scholar/user/badge/$sn",
      );
      for (var item in jsonLists) {
        list.add(ActivityItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<ActivityItem> raffle({required String userId}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "userId": userId,
      })
        ..removeWhere((key, value) => value == null);

      ActivityItem? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().post(
        url: "/api/scholar/user/raffle",
        params: params,
      );
      item = ActivityItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<RaffleModel> getRaffle({required String userId}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "userId": userId,
      })
        ..removeWhere((key, value) => value == null);

      RaffleModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/user/raffle",
        params: params,
      );
      item = RaffleModel.fromJson(res);
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

  static Future<RelationshipItem> parentBind(
      {required String userId,
      required num typeId,
      required String userToSn}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "userId": userId,
        "typeId": typeId,
        "userToSn": userToSn,
      })
        ..removeWhere((key, value) => value == null);

      RelationshipItem? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().post(
        url: "/api/scholar/tuition/parentBind",
        params: params,
      );
      item = RelationshipItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<LessonItem>> getStudentLesson(
      {required String id, DateTime? date}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "id": id,
        "date": date,
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

  static Future<VideoCourseModel> getVideoCourse(
      {required num id, num? scholarId}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "id": id,
        "scholarId": scholarId,
      })
        ..removeWhere((key, value) => value == null);

      VideoCourseModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/course/videoCourse",
        params: params,
      );
      item = VideoCourseModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<PayModel> payCourse(
      {required num enrollmentId,
      required String classId,
      required String orderDate,
      required num lessons,
      required String uid,
      required String pid,
      required String shopId,
      required String orderType,
      required String priceKey,
      required String packingKey,
      required String singleLimitKey,
      required Map<String, dynamic> receiverInfo,
      required List<Map<String, dynamic>> goods,
      required List<Map<String, dynamic>> adjs}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "classId": classId,
        "enrollmentId": enrollmentId,
        "orderDate": orderDate,
        "lessons": lessons,
        "uid": uid,
        "pid": pid,
        "shopId": shopId,
        "orderType": orderType,
        "priceKey": priceKey,
        "packingKey": packingKey,
        "singleLimitKey": singleLimitKey,
        "receiverInfo": receiverInfo,
        "goods": goods,
        "adjs": adjs,
      })
        ..removeWhere((key, value) => value == null);

      PayModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().post(
        url: "/api/scholar/course/pay",
        params: params,
      );
      item = PayModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<PayModel> payCourseEnrollment(
      {required num enrollmentId,
      required String classId,
      required String orderDate,
      required num lessons,
      required String pid,
      required String shopId,
      required String orderType,
      required String priceKey,
      required String packingKey,
      required String singleLimitKey,
      required Map<String, dynamic> receiverInfo,
      required List<Map<String, dynamic>> goods,
      required List<Map<String, dynamic>> adjs}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "classId": classId,
        "enrollmentId": enrollmentId,
        "orderDate": orderDate,
        "lessons": lessons,
        "pid": pid,
        "shopId": shopId,
        "orderType": orderType,
        "priceKey": priceKey,
        "packingKey": packingKey,
        "singleLimitKey": singleLimitKey,
        "receiverInfo": receiverInfo,
        "goods": goods,
        "adjs": adjs,
      })
        ..removeWhere((key, value) => value == null);

      PayModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().post(
        url: "/api/scholar/course/payEnrollment",
        params: params,
      );
      item = PayModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<PayModel> payMeal(
      {required String orderId,
      required String uid,
      required String pid,
      required String shopId,
      required String orderType,
      required String priceKey,
      required String packingKey,
      required String singleLimitKey,
      required Map<String, dynamic> receiverInfo,
      required List<Map<String, dynamic>> goods,
      required List<Map<String, dynamic>> adjs}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "orderId": orderId,
        "uid": uid,
        "pid": pid,
        "shopId": shopId,
        "orderType": orderType,
        "priceKey": priceKey,
        "packingKey": packingKey,
        "singleLimitKey": singleLimitKey,
        "receiverInfo": receiverInfo,
        "goods": goods,
        "adjs": adjs,
      })
        ..removeWhere((key, value) => value == null);

      PayModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().post(
        url: "/api/scholar/meal/pay",
        params: params,
      );
      item = PayModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<PayModel> payTuition(
      {required String orderId,
      required String uid,
      required String pid,
      required String shopId,
      required String orderType,
      required String priceKey,
      required String packingKey,
      required String singleLimitKey,
      required Map<String, dynamic> receiverInfo,
      required List<Map<String, dynamic>> goods,
      required List<Map<String, dynamic>> adjs}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "orderId": orderId,
        "uid": uid,
        "pid": pid,
        "shopId": shopId,
        "orderType": orderType,
        "priceKey": priceKey,
        "packingKey": packingKey,
        "singleLimitKey": singleLimitKey,
        "receiverInfo": receiverInfo,
        "goods": goods,
        "adjs": adjs,
      })
        ..removeWhere((key, value) => value == null);

      PayModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().post(
        url: "/api/scholar/tuition/pay",
        params: params,
      );
      item = PayModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<AppInfoModel> getAppVersion() async {
    try {
      AppInfoModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/appVersion",
      );
      item = AppInfoModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
