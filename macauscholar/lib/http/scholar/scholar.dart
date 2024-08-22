import 'package:macauscholar/macauscholar.dart';
import 'package:marketing/marketing.dart';
import 'package:member/member.dart';
import 'package:order/model/pay_model.dart';
import 'package:service_package/api/api_gen.dart';
import 'package:storage/storage.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
/// package:storage/storage.dart
/// package:member/member.dart
/// package:marketing/marketing.dart
/// package:order/model/pay_model.dart
@ApiGen('/api', file: 'ScholarResponse', dio: 'ScholarDio')
abstract class Class {
  @ApiGen(
    '/scholar/home',
    method: ApiGen.GET,
    target: 'HomeModel',
  )
  Future<HomeModel> getHomeData();

  @ApiGen(
    '/scholar/study',
    method: ApiGen.GET,
    target: 'StudyModel',
  )
  Future<StudyModel> getStudyData();

  @ApiGen(
    '/scholar/welfare',
    method: ApiGen.GET,
    target: 'WelfareModel',
  )
  Future<WelfareModel> getWelfareData();

  @ApiGen('/scholar/advert',
      method: ApiGen.GET,
      target: 'AdvertModel',
      params: {
        'position': '@C_position',
        'brand': '@C_brand',
      },
      data: {
        'x-location': '@C_xLocation'
      })
  Future<AdvertModel> getAdvert(
      {required String position, String? brand, String? xLocation});

  @ApiGen(
    '/scholar/shop/home',
    method: ApiGen.GET,
    target: 'ShopHomeModel',
  )
  Future<ShopHomeModel> getShopHomeData();

  @ApiGen(
    '/scholar/tuition',
    method: ApiGen.GET,
    target: 'TuitionModel',
  )
  Future<TuitionModel> getTuitionData();

  @ApiGen(
    '/scholar/recommend',
    method: ApiGen.GET,
    target: 'RecommendModel',
  )
  Future<RecommendModel> getRecommendData();

  @ApiGen(
    '/scholar/course',
    method: ApiGen.GET,
    target: 'CourseModel',
  )
  Future<CourseModel> getCourseData();

  @ApiGen(
    '/scholar/course/\$id',
    method: ApiGen.GET,
    target: 'CourseDetailModel',
  )
  Future<CourseDetailModel> getCourseDetail({required String id});

  @ApiGen(
    '/scholar/photoList',
    method: ApiGen.GET,
    target: 'CatalogItem',
    params: {
      'group': '@C_group',
      'name': '@C_name',
      'page': '@C_page',
      'size': '@C_size',
    },
  )
  Future<List<CatalogItem>> getPhotoList(
      {required String group, required String name, num? page, num? size});

  @ApiGen(
    '/scholar/user/scholar',
    method: ApiGen.POST,
    target: 'RelationshipItem',
    params: {
      'displayName': '@C_displayName',
      'gender': '@C_gender',
      'phone': '@C_phone',
      'birthday': '@C_birthday',
      'userId': '@C_userId',
      'typeId': '@C_typeId'
    },
  )
  Future<RelationshipItem> addScholar({
    required String displayName,
    required String gender,
    required String phone,
    required String birthday,
    required String userId,
    required num typeId,
  });

  @ApiGen(
    '/scholar/user/relationShip',
    method: ApiGen.GET,
    target: 'RelationModel',
  )
  Future<RelationModel> getRelations();
  // @ApiGen(
  //   '/scholar/user/relationShip',
  //   method: ApiGen.GET,
  //   target: 'ScholarItem',
  //   params: {
  //     'type': 'scholar',
  //   },
  // )
  // Future<List<ScholarItem>> getScholarList();
  //
  // @ApiGen(
  //   '/scholar/user/relationShip',
  //   method: ApiGen.GET,
  //   target: 'StudentItem',
  //   params: {
  //     'type': 'student',
  //   },
  // )
  // Future<List<StudentItem>> getStudentList();

  @ApiGen(
    '/scholar/user/userIdentity',
    method: ApiGen.GET,
    target: 'IdentityModel',
  )
  Future<IdentityModel> getUserIdentity();

  @ApiGen(
    '/scholar/user/studentParent',
    method: ApiGen.GET,
    target: 'ParentItem',
    params: {
      'type': '@C_type',
      'user': '@C_user',
    },
  )
  Future<List<ParentItem>> getParentList(
      {required String type, required String user});

  @ApiGen(
    '/scholar/user/unbindStudentParent',
    method: ApiGen.POST,
    target: 'RelationshipItem',
    params: {
      'userToSn': '@C_userToSn',
      'userSn': '@C_userSn',
    },
  )
  Future<RelationshipItem> unbindParent(
      {required String userToSn, required String userSn});

  @ApiGen(
    '/scholar/user/userGrade',
    method: ApiGen.GET,
    target: 'UserGradeModel',
    params: {
      'sn': '@C_sn',
    },
  )
  Future<UserGradeModel> getUserGrade({required String sn});

  @ApiGen(
    '/scholar/user/userListGrade',
    method: ApiGen.GET,
    target: 'User',
    params: {
      'sns': '@C_sns',
    },
  )
  Future<List<User>> getUserListGrade({required List<String> sns});

  @ApiGen(
    '/scholar/user/badge/\$sn',
    method: ApiGen.GET,
    target: 'ActivityItem',
  )
  Future<List<ActivityItem>> getUserBadge({required String sn});

  @ApiGen(
    '/scholar/user/raffle',
    method: ApiGen.POST,
    target: 'ActivityItem',
    params: {
      'userId': '@C_userId',
    },
  )
  Future<ActivityItem> raffle({required String userId});

  @ApiGen(
    '/scholar/user/raffle',
    method: ApiGen.GET,
    target: 'RaffleModel',
    params: {
      'userId': '@C_userId',
    },
  )
  Future<RaffleModel> getRaffle({required String userId});

  @ApiGen(
    '/scholar/tuition/learnCenterData',
    method: ApiGen.GET,
    target: 'LearnCenterModel',
    params: {
      'date': '@C_date',
      'id': '@C_id',
    },
  )
  Future<LearnCenterModel> getLearnCenterData(
      {required DateTime date, required String id});

  @ApiGen(
    '/scholar/tuition/parentBind',
    method: ApiGen.POST,
    target: 'RelationshipItem',
    params: {
      'userId': '@C_userId',
      'typeId': '@C_typeId',
      'userToSn': '@C_userToSn',
    },
  )
  Future<RelationshipItem> parentBind({
    required String userId,
    required num typeId,
    required String userToSn,
  });

  @ApiGen(
    '/scholar/course/studentLesson',
    method: ApiGen.GET,
    target: 'LessonItem',
    params: {
      'id': '@C_id',
      'date': '@C_date',
    },
  )
  Future<List<LessonItem>> getStudentLesson(
      {required String id, DateTime? date});

  @ApiGen(
    '/scholar/course/discountClass',
    method: ApiGen.GET,
    target: 'DiscountClassModel',
  )
  Future<List<DiscountClassModel>> getDiscountClass();

  @ApiGen(
    '/scholar/course/classLesson',
    method: ApiGen.GET,
    target: 'LessonItem',
    params: {
      'id': '@C_ids',
    },
  )
  Future<List<LessonItem>> getClassLesson({required List<num> ids});

  @ApiGen(
    '/scholar/course/videoCourse',
    method: ApiGen.GET,
    target: 'VideoCourseModel',
    params: {'id': '@C_id', 'scholarId': '@C_scholarId'},
  )
  Future<VideoCourseModel> getVideoCourse({required num id, num? scholarId});

  @ApiGen(
    '/scholar/course/pay',
    method: ApiGen.POST,
    target: 'PayModel',
    params: {
      'classId': '@C_classId',
      'enrollmentId': '@C_enrollmentId',
      'orderDate': '@C_orderDate',
      'lessons': '@C_lessons',
      'uid': '@C_uid',
      'pid': '@C_pid',
      'shopId': '@C_shopId',
      'orderType': '@C_orderType',
      'priceKey': '@C_priceKey',
      'packingKey': '@C_packingKey',
      'singleLimitKey': '@C_singleLimitKey',
      'receiverInfo': '@C_receiverInfo',
      'goods': '@C_goods',
      'adjs': '@C_adjs',
    },
  )
  Future<PayModel> payCourse({
    required num enrollmentId,
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
    required List<Map<String, dynamic>> adjs,
  });

  @ApiGen(
    '/scholar/course/payEnrollment',
    method: ApiGen.POST,
    target: 'PayModel',
    params: {
      'classId': '@C_classId',
      'enrollmentId': '@C_enrollmentId',
      'orderDate': '@C_orderDate',
      'lessons': '@C_lessons',
      'pid': '@C_pid',
      'shopId': '@C_shopId',
      'orderType': '@C_orderType',
      'priceKey': '@C_priceKey',
      'packingKey': '@C_packingKey',
      'singleLimitKey': '@C_singleLimitKey',
      'receiverInfo': '@C_receiverInfo',
      'goods': '@C_goods',
      'adjs': '@C_adjs',
    },
  )
  Future<PayModel> payCourseEnrollment({
    required num enrollmentId,
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
    required List<Map<String, dynamic>> adjs,
  });

  @ApiGen(
    '/scholar/meal/pay',
    method: ApiGen.POST,
    target: 'PayModel',
    params: {
      'orderId': '@C_orderId',
      'uid': '@C_uid',
      'pid': '@C_pid',
      'shopId': '@C_shopId',
      'orderType': '@C_orderType',
      'priceKey': '@C_priceKey',
      'packingKey': '@C_packingKey',
      'singleLimitKey': '@C_singleLimitKey',
      'receiverInfo': '@C_receiverInfo',
      'goods': '@C_goods',
      'adjs': '@C_adjs',
    },
  )
  Future<PayModel> payMeal({
    required String orderId,
    required String uid,
    required String pid,
    required String shopId,
    required String orderType,
    required String priceKey,
    required String packingKey,
    required String singleLimitKey,
    required Map<String, dynamic> receiverInfo,
    required List<Map<String, dynamic>> goods,
    required List<Map<String, dynamic>> adjs,
  });

  @ApiGen(
    '/scholar/tuition/pay',
    method: ApiGen.POST,
    target: 'PayModel',
    params: {
      'orderId': '@C_orderId',
      'uid': '@C_uid',
      'pid': '@C_pid',
      'shopId': '@C_shopId',
      'orderType': '@C_orderType',
      'priceKey': '@C_priceKey',
      'packingKey': '@C_packingKey',
      'singleLimitKey': '@C_singleLimitKey',
      'receiverInfo': '@C_receiverInfo',
      'goods': '@C_goods',
      'adjs': '@C_adjs',
    },
  )
  Future<PayModel> payTuition({
    required String orderId,
    required String uid,
    required String pid,
    required String shopId,
    required String orderType,
    required String priceKey,
    required String packingKey,
    required String singleLimitKey,
    required Map<String, dynamic> receiverInfo,
    required List<Map<String, dynamic>> goods,
    required List<Map<String, dynamic>> adjs,
  });

  @ApiGen(
    '/scholar/appVersion',
    method: ApiGen.GET,
    target: 'AppInfoModel',
  )
  Future<AppInfoModel> getAppVersion();



}
