import 'dart:convert';

import 'package:article/article.dart';
import 'package:gold/gold.dart';
import 'package:macauscholar/model/photo_item.dart';

import 'class_item.dart';

/// bannerList : [{"id":116478,"bid":292366,"shopId":"home1","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/60af1ca7d5aa6705f6abbfc993cae1e2ebe95794978e455a5ddd3aaeb71960c7_home1.png"}},{"id":116479,"bid":292367,"shopId":"home2","adInfo":{"link":"/recommend/youngCourses","cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/1a82dd8c1c35fd9319107caa1f0d9d71ffbbaf94307ebd121fc0edcc4611fe65_home2.jpeg"}}]
/// hotCourse : [{"id":11,"oldObjectId":"23VyZ8o1NE","issue":"2310050027-0","sn":"23VyZ8o1NE","branch":"B0000490","roomId":2,"categoryId":8,"brandId":1,"title":"股票投資技巧班B","fee":1240,"registrationFee":500,"startDate":"2024-04-05T16:00:00.000Z","endDate":"2024-04-26T16:00:00.000Z","capacity":10,"lessons":12,"lessonPrice":103,"pdac":null,"tags":["latest","hot"],"order":0,"scheduleDays":[6],"scheduleTimeStart":null,"scheduleTimeEnd":null,"oldMySQLID":null,"color":null,"classEndDate":null,"state":"init","ext1":{"enrolled":0,"realEnrolled":0},"ext2":{},"showInAppList":true,"feeRemark":null,"classRemark":"","timeRemark":"逢週六15:00-18:00","discountLessonPrice":103,"discount":false,"allBuy":true,"incomeMode":"wholeClass","courseId":47,"teacherId":28,"assistantId":null,"createdAt":"2024-03-27T06:27:57.755Z","updatedAt":"2024-03-27T07:03:58.512Z","brand":{"id":1,"oldObjectId":"AZa0SaDnFS","title":"匯智教育有限公司","code":"FINANCE_HUIZHI_COMPANY","description":null,"order":null,"createdAt":"2024-03-27T06:26:07.662Z","updatedAt":"2024-03-27T06:32:55.619Z"},"course":{"id":47,"oldObjectId":"nUjG6NdqgI","title":"股票投資技巧課程","code":"004","description":null,"cover":null,"contents":null,"categoryId":8,"color":null,"order":0,"oldMySQLID":null,"showInAppList":null,"tags":null,"deletedAt":null,"createdAt":"2024-03-27T06:27:24.466Z","updatedAt":"2024-03-27T07:02:46.057Z","category":{"id":8,"oldObjectId":"3zB2xZFVWy","title":"其他課程","code":"course_6","description":null,"cover":null,"parentId":3,"order":0,"oldMySQLID":null,"createdAt":"2024-03-27T06:27:15.544Z","updatedAt":"2024-03-27T06:59:20.358Z"}},"teacher":{"id":28,"oldObjectId":"W932FazCA0","number":"025","displayName":"黃榮升","avatar":null,"gender":"f","phone":"66813976","description":"","recommend":false,"createdAt":"2024-03-27T06:26:12.472Z","updatedAt":"2024-03-27T06:33:16.973Z"},"assistant":null,"charges":[],"category":{"id":8,"oldObjectId":"3zB2xZFVWy","title":"其他課程","code":"course_6","description":null,"cover":null,"parentId":3,"order":0,"oldMySQLID":null,"createdAt":"2024-03-27T06:27:15.544Z","updatedAt":"2024-03-27T06:59:20.358Z"}},{"id":47,"oldObjectId":"A8q1jDXELU","issue":"2307120280-1","sn":"A8q1jDXELU","branch":"B0000490","roomId":2,"categoryId":30,"brandId":1,"title":"成人英語聆聽會話課程2307120280-1","fee":1800,"registrationFee":500,"startDate":"2023-11-20T16:00:00.000Z","endDate":"2023-12-18T16:00:00.000Z","capacity":12,"lessons":18,"lessonPrice":100,"pdac":null,"tags":["hot","latest"],"order":0,"scheduleDays":[2,5],"scheduleTimeStart":null,"scheduleTimeEnd":null,"oldMySQLID":null,"color":null,"classEndDate":null,"state":"init","ext1":{"enrolled":4,"realEnrolled":3},"ext2":{},"showInAppList":false,"feeRemark":null,"classRemark":"","timeRemark":"逢週二、五 19:30-21:30","discountLessonPrice":100,"discount":false,"allBuy":true,"incomeMode":"wholeClass","courseId":14,"teacherId":22,"assistantId":null,"createdAt":"2024-03-27T06:28:34.044Z","updatedAt":"2024-03-27T07:05:34.360Z","brand":{"id":1,"oldObjectId":"AZa0SaDnFS","title":"匯智教育有限公司","code":"FINANCE_HUIZHI_COMPANY","description":null,"order":null,"createdAt":"2024-03-27T06:26:07.662Z","updatedAt":"2024-03-27T06:32:55.619Z"},"course":{"id":14,"oldObjectId":"BJCnA6u5Wo","title":"成人英語聆聽會話課程","code":"002","description":null,"cover":null,"contents":null,"categoryId":30,"color":null,"order":0,"oldMySQLID":null,"showInAppList":null,"tags":null,"deletedAt":null,"createdAt":"2024-03-27T06:27:21.502Z","updatedAt":"2024-03-27T07:01:45.368Z","category":{"id":30,"oldObjectId":"eOut4VTv38","title":"英語課程","code":"course_1","description":"英語","cover":null,"parentId":3,"order":0,"oldMySQLID":null,"createdAt":"2024-03-27T06:27:18.428Z","updatedAt":"2024-03-27T07:00:30.331Z"}},"teacher":{"id":22,"oldObjectId":"SRX8ED7wbZ","number":"005","displayName":"李家悠","avatar":null,"gender":"m","phone":null,"description":"澳門大學英文傳意學士 台灣天主教輔仁大學中學師範文憑 廣州華南師範大學小學師範文憑 廣州華南師範大學教育心理學碩士 澳門大學持續進修中心幼兒英語拼音教學證書 樂宜督課中心英語課程老師 (2011-2013) 澳門培道中學小學部英文、常識、美術科老師 (2013-2021) 現為匯智教育中心持續進修課程英文導師及中學英文補習老師 蓮峯普濟學校、培華學校餘暇英文會話及英文拼音課程導師","recommend":false,"createdAt":"2024-03-27T06:26:12.132Z","updatedAt":"2024-03-27T06:33:14.740Z"},"assistant":null,"charges":[],"category":{"id":30,"oldObjectId":"eOut4VTv38","title":"英語課程","code":"course_1","description":"英語","cover":null,"parentId":3,"order":0,"oldMySQLID":null,"createdAt":"2024-03-27T06:27:18.428Z","updatedAt":"2024-03-27T07:00:30.331Z"}},{"id":52,"oldObjectId":"ArkVOMdlU9","issue":null,"sn":"ArkVOMdlU9","branch":"B1000000","roomId":27,"categoryId":26,"brandId":1,"title":"黃埔軍校夏令營2023-A營","fee":5280,"registrationFee":1000,"startDate":"2023-07-22T16:00:00.000Z","endDate":"2023-07-28T16:00:00.000Z","capacity":30,"lessons":7,"lessonPrice":755,"pdac":null,"tags":["latest","hot","recommended"],"order":0,"scheduleDays":[0,1,2,3,4,5,6],"scheduleTimeStart":null,"scheduleTimeEnd":null,"oldMySQLID":null,"color":null,"classEndDate":null,"state":"init","ext1":{"enrolled":20,"realEnrolled":19},"ext2":{},"showInAppList":false,"feeRemark":"7天6夜營","classRemark":"","timeRemark":"A營：7月23日至7月29日","discountLessonPrice":755,"discount":false,"allBuy":true,"incomeMode":"wholeClass","courseId":57,"teacherId":15,"assistantId":null,"createdAt":"2024-03-27T06:28:34.450Z","updatedAt":"2024-03-27T07:05:47.232Z","brand":{"id":1,"oldObjectId":"AZa0SaDnFS","title":"匯智教育有限公司","code":"FINANCE_HUIZHI_COMPANY","description":null,"order":null,"createdAt":"2024-03-27T06:26:07.662Z","updatedAt":"2024-03-27T06:32:55.619Z"},"course":{"id":57,"oldObjectId":"yyAaCt1LT7","title":"儒林教育x廣州黃埔軍校 <<暑期夏令營2023>>","code":"20230708XLY","description":null,"cover":null,"contents":null,"categoryId":26,"color":null,"order":0,"oldMySQLID":null,"showInAppList":null,"tags":null,"deletedAt":null,"createdAt":"2024-03-27T06:27:34.365Z","updatedAt":"2024-03-27T07:03:11.403Z","category":{"id":26,"oldObjectId":"IimQGD7oFW","title":"暑期夏令營","code":"C_57","description":null,"cover":null,"parentId":48,"order":0,"oldMySQLID":57,"createdAt":"2024-03-27T06:27:17.681Z","updatedAt":"2024-04-02T08:42:25.352Z"}},"teacher":{"id":15,"oldObjectId":"G8xLCltcLp","number":"002","displayName":"儒林","avatar":null,"gender":"f","phone":null,"description":null,"recommend":false,"createdAt":"2024-03-27T06:26:11.646Z","updatedAt":"2024-03-27T06:33:12.496Z"},"assistant":null,"charges":[],"category":{"id":26,"oldObjectId":"IimQGD7oFW","title":"暑期夏令營","code":"C_57","description":null,"cover":null,"parentId":48,"order":0,"oldMySQLID":57,"createdAt":"2024-03-27T06:27:17.681Z","updatedAt":"2024-04-02T08:42:25.352Z"}},{"id":53,"oldObjectId":"B6zYRrB6aN","issue":null,"sn":"B6zYRrB6aN","branch":"B1000000","roomId":27,"categoryId":4,"brandId":1,"title":"test001","fee":100,"registrationFee":500,"startDate":"2023-11-30T16:00:00.000Z","endDate":"2024-03-30T16:00:00.000Z","capacity":10,"lessons":10,"lessonPrice":10,"pdac":null,"tags":["hot"],"order":0,"scheduleDays":[1,2,4],"scheduleTimeStart":null,"scheduleTimeEnd":null,"oldMySQLID":null,"color":null,"classEndDate":null,"state":"init","ext1":{"enrolled":2,"realEnrolled":2},"ext2":{},"showInAppList":false,"feeRemark":null,"classRemark":"","timeRemark":null,"discountLessonPrice":10,"discount":false,"allBuy":false,"incomeMode":"lesson","courseId":6,"teacherId":48,"assistantId":48,"createdAt":"2024-03-27T06:28:34.556Z","updatedAt":"2024-03-27T07:05:52.072Z","brand":{"id":1,"oldObjectId":"AZa0SaDnFS","title":"匯智教育有限公司","code":"FINANCE_HUIZHI_COMPANY","description":null,"order":null,"createdAt":"2024-03-27T06:26:07.662Z","updatedAt":"2024-03-27T06:32:55.619Z"},"course":{"id":6,"oldObjectId":"SHW7us2cHX","title":"IT测试课程","code":"001","description":null,"cover":null,"contents":null,"categoryId":63,"color":null,"order":0,"oldMySQLID":null,"showInAppList":null,"tags":null,"deletedAt":null,"createdAt":"2024-03-27T06:27:20.913Z","updatedAt":"2024-04-02T08:45:12.064Z","category":{"id":63,"oldObjectId":"mFja7lsyt6","title":"000123","code":"000123","description":"測試","cover":null,"parentId":null,"order":0,"oldMySQLID":null,"createdAt":"2024-04-02T08:43:16.784Z","updatedAt":"2024-04-02T08:43:16.784Z"}},"teacher":{"id":48,"oldObjectId":"rdMUI3fxyL","number":"admin","displayName":"admin","avatar":null,"gender":"m","phone":"admin","description":"admin导师","recommend":false,"createdAt":"2024-03-27T06:26:13.815Z","updatedAt":"2024-03-27T06:33:50.265Z"},"assistant":{"id":48,"oldObjectId":"rdMUI3fxyL","number":"admin","displayName":"admin","avatar":null,"gender":"m","phone":"admin","description":"admin导师","recommend":false,"createdAt":"2024-03-27T06:26:13.815Z","updatedAt":"2024-03-27T06:33:50.265Z"},"charges":[],"category":{"id":4,"oldObjectId":"nCzqwDDBkn","title":"雅思","code":"course_IELTS","description":null,"cover":null,"parentId":43,"order":0,"oldMySQLID":16,"createdAt":"2024-03-27T06:27:14.956Z","updatedAt":"2024-04-02T08:43:20.537Z"}},{"id":95,"oldObjectId":"JyqK5j6xQY","issue":null,"sn":"JyqK5j6xQY","branch":"B0000738","roomId":4,"categoryId":6,"brandId":3,"title":"珠心算暑期特訓班F1","fee":1170,"registrationFee":500,"startDate":"2023-07-31T16:00:00.000Z","endDate":"2023-08-16T16:00:00.000Z","capacity":10,"lessons":6,"lessonPrice":195,"pdac":null,"tags":["latest","hot"],"order":0,"scheduleDays":[2,4],"scheduleTimeStart":null,"scheduleTimeEnd":null,"oldMySQLID":null,"color":null,"classEndDate":null,"state":"init","ext1":{"enrolled":2,"realEnrolled":0},"ext2":{},"showInAppList":false,"feeRemark":"7-8月連報免收材料費","classRemark":"","timeRemark":"逢週二、週四 11:00-12:00","discountLessonPrice":195,"discount":false,"allBuy":true,"incomeMode":"wholeClass","courseId":23,"teacherId":14,"assistantId":null,"createdAt":"2024-03-27T06:28:38.553Z","updatedAt":"2024-03-27T07:07:47.541Z","brand":{"id":3,"oldObjectId":"Myh0wuBxBN","title":"珠心算專業教育（澳門）有限公司","code":"FINANCE_ADACUS_COMPANY","description":null,"order":null,"createdAt":"2024-03-27T06:26:07.816Z","updatedAt":"2024-03-27T06:32:56.377Z"},"course":{"id":23,"oldObjectId":"NIyztlH1AF","title":"珠心算暑期特訓班","code":"0012","description":null,"cover":null,"contents":null,"categoryId":6,"color":null,"order":0,"oldMySQLID":null,"showInAppList":null,"tags":null,"deletedAt":null,"createdAt":"2024-03-27T06:27:22.316Z","updatedAt":"2024-03-27T07:02:03.317Z","category":{"id":6,"oldObjectId":"3XuY3IEJJ3","title":"珠心算課程","code":"ABACUS_COURSE","description":null,"cover":null,"parentId":5,"order":0,"oldMySQLID":50,"createdAt":"2024-03-27T06:27:15.148Z","updatedAt":"2024-03-27T06:59:15.572Z"}},"teacher":{"id":14,"oldObjectId":"FCTnJihCo5","number":"TA0007","displayName":"周依婷","avatar":null,"gender":"f","phone":"63545139","description":"","recommend":false,"createdAt":"2024-03-27T06:26:11.578Z","updatedAt":"2024-03-27T06:33:12.210Z"},"assistant":null,"charges":[],"category":{"id":6,"oldObjectId":"3XuY3IEJJ3","title":"珠心算課程","code":"ABACUS_COURSE","description":null,"cover":null,"parentId":5,"order":0,"oldMySQLID":50,"createdAt":"2024-03-27T06:27:15.148Z","updatedAt":"2024-03-27T06:59:15.572Z"}}]
/// scholarDynamic : [{"id":579,"title":"「第36屆澳門公益金百萬行」💪💪","suTitle":null,"code":null,"body":"「第36屆澳門公益金百萬行」已於12月8日圓滿結束，儒林大家庭一早聚集到起步點集合，身體力行參與公益活動，傳遞社會正能量😁😁\n期望未來我們有更多機會貢獻社會，為澳門出一分力💪💪\n#人人爲我 #我爲人人\n#公益金 #百萬行 #身體力行 \n#儒林教育 #導師教學用心 #學生學習開心\n![公益1.jpg](https://storage.macauscholar.com/strapi/scholar/1_38266a4bfe.jpg)\n![公益2.jpg](https://storage.macauscholar.com/strapi/scholar/2_becff47242.jpg)\n![公益3.jpg](https://storage.macauscholar.com/strapi/scholar/3_28d35d5600.jpg)\n![公益4.jpg](https://storage.macauscholar.com/strapi/scholar/4_c04702912e.jpg)\n![公益5.jpg](https://storage.macauscholar.com/strapi/scholar/5_9a7961f421.jpg)\n![公益6.jpg](https://storage.macauscholar.com/strapi/scholar/6_52b899a55a.jpg)","langId":4,"id_old":159,"publishedAt":"2022-12-30T08:01:22.212Z","template":null,"date":"2019-11-30T16:00:00.000Z","description":null,"createdAt":"2022-12-30T08:01:21.159Z","old_createdAt":"2022-12-30T08:01:21.159Z","coverId":553,"merchantId":1,"categoryId":null,"cover":{"id":553,"provider":"default","merchantId":1,"name":"6_52b899a55a.jpg","hash":"ca6b34bef660aa74665cc514bb606d67cbcfdeb92ca6d477400dc314617e75a1","ext":".jpg","mime":"image/jpeg","size":"643289","path":"ca6b34bef660aa74665cc514bb606d67cbcfdeb92ca6d477400dc314617e75a1_6_52b899a55a.jpg","upload":{"etag":"1b52b4fc74059d37bf38061ceeb9915f","versionId":null},"createdAt":"2024-03-01T06:43:27.154Z","url":"https://storage.dev.heyday-catering.com:20443/saas-article/public/ca6b34bef660aa74665cc514bb606d67cbcfdeb92ca6d477400dc314617e75a1_6_52b899a55a.jpg"},"merchant":{"id":1,"code":"scholar","title":"儒林教育","createdAt":"2023-12-21T05:58:03.597Z"}},{"id":580,"title":"<<氹仔區第四間- 美景旗艦店 即將開業>>📣📣📣","suTitle":null,"code":null,"body":"<<氹仔區第四間- 美景旗艦店 即將開業>>📣📣📣\n好消息！！！儒林再於氹仔區設立新分社✨✨✨\n⭐️佔地超過2000呎，環境超寬闊，交通更便利，\n為學生提供更理想的學習環境💛💛\n鄰近學校！！接送更安全！！❤️❤️\n🏠儒林4社地址\n氹仔運動場圓形地19號美景花園第五座AS\n☎️查詢電話: 6859-9645（微信）\n<<儒林教育 品牌教育 值得信賴>>\n儒林教育集團--總辦事處\n電話：+853 2892-1492 /6569-6635(微信)\n地址：澳門水坑尾街78號中建商業大廈13樓全層\n網址：www.macauscholar.com\n電郵：cs@macauscholar.com\n微信公眾號：儒林教育集團 (MacauScholar)\n![312365200_5306707879440286_6904840591097470954_n.jpg](https://storage.macauscholar.com/strapi/scholar/312365200_5306707879440286_6904840591097470954_n_e98e4db47f.jpg)","langId":4,"id_old":85,"publishedAt":"2022-12-28T06:00:39.900Z","template":null,"date":"2022-10-19T16:00:00.000Z","description":null,"createdAt":"2022-12-28T06:00:37.937Z","old_createdAt":"2022-12-28T06:00:37.937Z","coverId":554,"merchantId":1,"categoryId":null,"cover":{"id":554,"provider":"default","merchantId":1,"name":"312365200_5306707879440286_6904840591097470954_n_e98e4db47f.jpg","hash":"8cca7031798695de1b11da8f0f5303ecb1b9e06b6ff2d6443a646a28952fc32c","ext":".jpg","mime":"image/jpeg","size":"531794","path":"8cca7031798695de1b11da8f0f5303ecb1b9e06b6ff2d6443a646a28952fc32c_312365200_5306707879440286_6904840591097470954_n_e98e4db47f.jpg","upload":{"etag":"f46e789d8f3fd61c5996acb18ac372b4","versionId":null},"createdAt":"2024-03-01T06:43:35.812Z","url":"https://storage.dev.heyday-catering.com:20443/saas-article/public/8cca7031798695de1b11da8f0f5303ecb1b9e06b6ff2d6443a646a28952fc32c_312365200_5306707879440286_6904840591097470954_n_e98e4db47f.jpg"},"merchant":{"id":1,"code":"scholar","title":"儒林教育","createdAt":"2023-12-21T05:58:03.597Z"}}]

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));
String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
  HomeModel({
    List<PositionItem>? bannerList,
    List<PositionItem>? homeButtonList,
    List<ClassItem>? hotCourse,
    List<ArticleItem>? scholarDynamic,
    List<PhotoItem>? photoList,
  }) {
    _bannerList = bannerList;
    _homeButtonList = homeButtonList;
    _hotCourse = hotCourse;
    _scholarDynamic = scholarDynamic;
    _photoList = photoList;
  }

  HomeModel.fromJson(dynamic json) {
    if (json['bannerList'] != null) {
      _bannerList = [];
      json['bannerList'].forEach((v) {
        _bannerList?.add(PositionItem.fromJson(v));
      });
    }
    if (json['homeButtonList'] != null) {
      _homeButtonList = [];
      json['homeButtonList'].forEach((v) {
        _homeButtonList?.add(PositionItem.fromJson(v));
      });
    }
    if (json['hotCourse'] != null) {
      _hotCourse = [];
      json['hotCourse'].forEach((v) {
        _hotCourse?.add(ClassItem.fromJson(v));
      });
    }
    if (json['scholarDynamic'] != null) {
      _scholarDynamic = [];
      json['scholarDynamic'].forEach((v) {
        _scholarDynamic?.add(ArticleItem.fromJson(v));
      });
    }
    if (json['photoList'] != null) {
      _photoList = [];
      json['photoList'].forEach((v) {
        _photoList?.add(PhotoItem.fromJson(v));
      });
    }
  }
  List<PositionItem>? _bannerList;
  List<PositionItem>? _homeButtonList;
  List<ClassItem>? _hotCourse;
  List<ArticleItem>? _scholarDynamic;
  List<PhotoItem>? _photoList;
  HomeModel copyWith({
    List<PositionItem>? bannerList,
    List<PositionItem>? homeButtonList,
    List<ClassItem>? hotCourse,
    List<ArticleItem>? scholarDynamic,
    List<PhotoItem>? photoList,
  }) =>
      HomeModel(
        bannerList: bannerList ?? _bannerList,
        homeButtonList: homeButtonList ?? _homeButtonList,
        hotCourse: hotCourse ?? _hotCourse,
        scholarDynamic: scholarDynamic ?? _scholarDynamic,
        photoList: photoList ?? _photoList,
      );
  List<PositionItem>? get bannerList => _bannerList;
  List<PositionItem>? get homeButtonList => _homeButtonList;
  List<ClassItem>? get hotCourse => _hotCourse;
  List<ArticleItem>? get scholarDynamic => _scholarDynamic;
  List<PhotoItem>? get photoList => _photoList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_bannerList != null) {
      map['bannerList'] = _bannerList?.map((v) => v.toJson()).toList();
    }
    if (_homeButtonList != null) {
      map['homeButtonList'] = _homeButtonList?.map((v) => v.toJson()).toList();
    }
    if (_hotCourse != null) {
      map['hotCourse'] = _hotCourse?.map((v) => v.toJson()).toList();
    }
    if (_scholarDynamic != null) {
      map['scholarDynamic'] = _scholarDynamic?.map((v) => v.toJson()).toList();
    }
    if (_photoList != null) {
      map['photoList'] = _photoList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
