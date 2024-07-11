import 'package:macauscholar/macauscholar.dart';
import 'package:member/member.dart';
import 'package:service_package/api/api_gen.dart';
import 'package:storage/storage.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
/// package:storage/storage.dart
/// package:member/member.dart
@ApiGen('/api', file: 'ScholarResponse', dio: 'ScholarDio')
abstract class Class {
  @ApiGen(
    '/scholar/get_home_data',
    method: ApiGen.GET,
    target: 'HomeModel',
  )
  Future<HomeModel> getHomeData();

  @ApiGen(
    '/scholar/welfare/data',
    method: ApiGen.GET,
    target: 'WelfareModel',
  )
  Future<WelfareModel> getWelfareData();

  @ApiGen('/scholar/place/advert/',
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
    '/scholar/shop/home/data',
    method: ApiGen.GET,
    target: 'ShopHomeModel',
  )
  Future<ShopHomeModel> getShopHomeData();

  @ApiGen(
    '/scholar/tuition/data',
    method: ApiGen.GET,
    target: 'TuitionModel',
  )
  Future<TuitionModel> getTuitionData();

  @ApiGen(
    '/scholar/recommend/advert/data',
    method: ApiGen.GET,
    target: 'RecommendModel',
  )
  Future<RecommendModel> getRecommendData();

  @ApiGen(
    '/scholar/course/data',
    method: ApiGen.GET,
    target: 'CourseModel',
  )
  Future<CourseModel> getCourseData();

  @ApiGen(
    '/scholar/photo/list',
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
    target: 'ScholarItem',
    params: {
      'type': 'scholar',
    },
  )
  Future<List<ScholarItem>> getScholarList();

  @ApiGen(
    '/scholar/user/relationShip',
    method: ApiGen.GET,
    target: 'StudentItem',
    params: {
      'type': 'student',
    },
  )
  Future<List<StudentItem>> getStudentList();

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
    '/scholar/course/studentLesson',
    method: ApiGen.GET,
    target: 'LessonItem',
    params: {
      'id': '@C_id',
    },
  )
  Future<List<LessonItem>> getStudentLesson({required String id});

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
}
