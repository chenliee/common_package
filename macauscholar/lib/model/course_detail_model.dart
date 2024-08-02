import 'dart:convert';

import 'package:macauscholar/macauscholar.dart';

/// course : {"id":226,"oldObjectId":"NsDySM9FCu","title":"藝術手作初體驗","code":"NURSE_COURSE_HAN","description":null,"cover":null,"contents":null,"categoryId":84,"color":null,"order":0,"oldMySQLID":null,"showInAppList":null,"tags":null,"deletedAt":null,"marketing":null,"createdAt":"2024-06-24T03:23:31.047Z","updatedAt":"2024-06-25T02:53:45.901Z","category":{"id":84,"oldObjectId":"0ph1MUiQK4","title":"會計","code":"course_ACC","description":null,"cover":null,"color":null,"parentId":83,"order":0,"oldMySQLID":13,"createdAt":"2024-06-24T03:20:19.710Z","updatedAt":"2024-06-24T03:20:19.710Z"}}
/// classList : [{"id":435,"oldObjectId":"0NEQMljAEl","issue":"dev","sn":"0NEQMljAEl","branch":"B0000879","roomId":57,"categoryId":83,"brandId":10,"title":"dev测试班级","fee":16,"registrationFee":500,"startDate":"2023-08-13T16:00:00.000Z","endDate":"2024-09-29T16:00:00.000Z","capacity":30,"lessons":8,"lessonPrice":5,"pdac":null,"tags":["hot"],"order":0,"scheduleDays":[0,3],"scheduleTimeStart":21600,"scheduleTimeEnd":36000,"oldMySQLID":null,"color":null,"classEndDate":null,"state":"init","ext1":{"enrolled":7,"realEnrolled":2},"ext2":{"trainingFee":33,"trainingFeeModel":"hourly"},"showInAppList":true,"feeRemark":null,"classRemark":"","timeRemark":null,"discountLessonPrice":3,"discount":true,"allBuy":true,"incomeMode":"wholeClass","cover":null,"courseId":226,"teacherId":78,"assistantId":71,"createdAt":"2024-06-24T03:25:54.323Z","updatedAt":"2024-07-12T02:43:38.871Z","brand":{"id":10,"oldObjectId":"sIby2AFy49","title":"匯智課程","code":"FINANCE_HUIZHI","description":null,"order":null,"createdAt":"2024-06-24T03:16:51.107Z","updatedAt":"2024-07-05T06:29:25.192Z"},"course":{"id":226,"oldObjectId":"NsDySM9FCu","title":"藝術手作初體驗","code":"NURSE_COURSE_HAN","description":null,"cover":null,"contents":null,"categoryId":84,"color":null,"order":0,"oldMySQLID":null,"showInAppList":null,"tags":null,"deletedAt":null,"marketing":null,"createdAt":"2024-06-24T03:23:31.047Z","updatedAt":"2024-06-25T02:53:45.901Z","category":{"id":84,"oldObjectId":"0ph1MUiQK4","title":"會計","code":"course_ACC","description":null,"cover":null,"color":null,"parentId":83,"order":0,"oldMySQLID":13,"createdAt":"2024-06-24T03:20:19.710Z","updatedAt":"2024-06-24T03:20:19.710Z"}},"teacher":{"id":78,"oldObjectId":"Kt2rIL7p7z","number":"TA001","displayName":"导师1号1","avatar":null,"gender":"f","phone":"312312312","description":"","recommend":true,"strongPointSubject":null,"teachingDate":null,"achievements":null,"createdAt":"2024-06-24T03:16:52.864Z","updatedAt":"2024-07-05T06:30:00.475Z"},"assistant":{"id":71,"oldObjectId":"52ZoaKcyl1","number":"DS003","displayName":"IT测试导师3","avatar":{"id":331,"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/teacher/DS003/a6f2faef5f6e5c598170f800c5149deddd61bd60b8c9f0767067edf6da4794a7_bfe75296-fc95-432e-acb0-e96f4f2c6121.jpg","hash":"a6f2faef5f6e5c598170f800c5149deddd61bd60b8c9f0767067edf6da4794a7","mime":"image/jpeg","name":"bfe75296-fc95-432e-acb0-e96f4f2c6121.jpg","path":"a6f2faef5f6e5c598170f800c5149deddd61bd60b8c9f0767067edf6da4794a7_bfe75296-fc95-432e-acb0-e96f4f2c6121.jpg","size":"155951","token":"eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzMxLCJ1cmwiOiJodHRwczovL3N0b3JhZ2UuZGV2LmhleWRheS1jYXRlcmluZy5jb206MjA0NDMvc2Nob2xhci9jbXMvdGVhY2hlci9EUzAwMy9hNmYyZmFlZjVmNmU1YzU5ODE3MGY4MDBjNTE0OWRlZGRkNjFiZDYwYjhjOWYwNzY3MDY3ZWRmNmRhNDc5NGE3X2JmZTc1Mjk2LWZjOTUtNDMyZS1hY2IwLWU5NmY0ZjJjNjEyMS5qcGciLCJtaW1lIjoiaW1hZ2UvanBlZyIsIm5hbWUiOiJiZmU3NTI5Ni1mYzk1LTQzMmUtYWNiMC1lOTZmNGYyYzYxMjEuanBnIiwic2l6ZSI6IjE1NTk1MSIsImhhc2giOiJhNmYyZmFlZjVmNmU1YzU5ODE3MGY4MDBjNTE0OWRlZGRkNjFiZDYwYjhjOWYwNzY3MDY3ZWRmNmRhNDc5NGE3IiwicGF0aCI6ImE2ZjJmYWVmNWY2ZTVjNTk4MTcwZjgwMGM1MTQ5ZGVkZGQ2MWJkNjBiOGM5ZjA3NjcwNjdlZGY2ZGE0Nzk0YTdfYmZlNzUyOTYtZmM5NS00MzJlLWFjYjAtZTk2ZjRmMmM2MTIxLmpwZyIsImlhdCI6MTcxOTM5MTY5N30.GN1MdggVvw5v_DpTsrOdowbzrfRstyRTSTVZ3wimjbwx6Y108Ch09o3ZGxj76lMHrVSbZqFPoJqCPm_4eGpX_LlxVGQdgOblp7m6937Mygudq5XqlJU0fsmw1H-doj4mVHg5ZrgtulRKx6uA-So0xXiX-J2pKvzl9vxrhEH9Pz-XOB-l30ez3lWuVrbg1w0KqjUSQrb7uDHQUfNVPZsf70_Rjwb7rJyUlwrtuqmGgrqzGREthJR68z0h8e3ZzZsK4jCo4gOtBct1BVJUhvf8HD_R_lvdFumqBz3XnWQGL7dmHhlttAhVi9SqUdkFoKy_8umNTPH3I06D3qMQn98cjg"},"gender":"f","phone":"123456@123","description":"","recommend":false,"strongPointSubject":null,"teachingDate":null,"achievements":null,"createdAt":"2024-06-24T03:16:52.485Z","updatedAt":"2024-07-05T06:29:50.261Z"},"charges":[{"id":62,"oldObjectId":"15QU9xQCls","code":"C000123","title":"測試費","categoryId":27,"courseId":null,"fee":100,"deleteAt":null,"createdAt":"2024-06-24T03:25:30.296Z","updatedAt":"2024-07-05T06:37:45.089Z"},{"id":64,"oldObjectId":"CKn8IecQDx","code":"C00012","title":"it哈哈哈哈","categoryId":20,"courseId":234,"fee":1000,"deleteAt":null,"createdAt":"2024-06-24T03:25:32.601Z","updatedAt":"2024-07-05T06:37:48.623Z"},{"id":65,"oldObjectId":"KX1iiU9nO5","code":"C001","title":"IT测试","categoryId":26,"courseId":null,"fee":100,"deleteAt":null,"createdAt":"2024-06-24T03:25:33.868Z","updatedAt":"2024-07-05T06:37:50.448Z"},{"id":66,"oldObjectId":"MzTqYdrB6B","code":"C000134","title":"ab測試雜費","categoryId":29,"courseId":null,"fee":1000,"deleteAt":null,"createdAt":"2024-06-24T03:25:35.215Z","updatedAt":"2024-07-05T06:37:51.962Z"},{"id":67,"oldObjectId":"WvjysCG8iJ","code":"C02356","title":"測試收費065","categoryId":27,"courseId":null,"fee":10,"deleteAt":null,"createdAt":"2024-06-24T03:25:37.561Z","updatedAt":"2024-07-05T06:37:52.808Z"},{"id":68,"oldObjectId":"Y2p6a0siCu","code":"C025","title":"025","categoryId":26,"courseId":null,"fee":100,"deleteAt":null,"createdAt":"2024-06-24T03:25:39.591Z","updatedAt":"2024-07-05T06:37:54.065Z"},{"id":69,"oldObjectId":"YyGuq8Elmn","code":"C003","title":"IT测试03","categoryId":21,"courseId":null,"fee":100,"deleteAt":null,"createdAt":"2024-06-24T03:25:41.224Z","updatedAt":"2024-07-05T06:37:54.905Z"},{"id":70,"oldObjectId":"eumrzDZlJC","code":"course_zi","title":"電子卡費","categoryId":27,"courseId":null,"fee":200,"deleteAt":null,"createdAt":"2024-06-24T03:25:45.040Z","updatedAt":"2024-07-05T06:37:55.727Z"},{"id":71,"oldObjectId":"reAR70W8QR","code":"C0001256","title":"2022.7.22測試","categoryId":19,"courseId":null,"fee":10,"deleteAt":null,"createdAt":"2024-06-24T03:25:46.753Z","updatedAt":"2024-07-05T06:37:57.485Z"},{"id":72,"oldObjectId":"wAMoUjGAp8","code":"C20220709","title":"202279測試使用雜費","categoryId":18,"courseId":null,"fee":10,"deleteAt":null,"createdAt":"2024-06-24T03:25:49.350Z","updatedAt":"2024-07-05T06:37:59.436Z"},{"id":73,"oldObjectId":"xmbS9rkyYV","code":"CC00012","title":"IT測試","categoryId":28,"courseId":197,"fee":100,"deleteAt":null,"createdAt":"2024-06-24T03:25:51.366Z","updatedAt":"2024-07-05T06:38:01.132Z"}],"category":{"id":83,"oldObjectId":"mahqOTE5en","title":"持續進修課程","code":"courses","description":null,"cover":null,"color":"#FFB318","parentId":null,"order":0,"oldMySQLID":10,"createdAt":"2024-06-24T03:20:18.288Z","updatedAt":"2024-07-25T02:38:42.738Z"},"room":{"id":57,"sn":"S2ce6pNlQk","oldObjectId":"S2ce6pNlQk","branch":"B0000879","number":"A00013","name":"儒林1  A課室","order":0,"createdAt":"2024-06-24T03:16:51.427Z","updatedAt":"2024-07-05T06:29:33.733Z"}}]

CourseDetailModel courseDetailModelFromJson(String str) =>
    CourseDetailModel.fromJson(json.decode(str));
String courseDetailModelToJson(CourseDetailModel data) =>
    json.encode(data.toJson());

class CourseDetailModel {
  CourseDetailModel({
    CourseItem? course,
    List<ClassItem>? classList,
  }) {
    _course = course;
    _classList = classList;
  }

  CourseDetailModel.fromJson(dynamic json) {
    _course =
        json['course'] != null ? CourseItem.fromJson(json['course']) : null;

    if (json['classList'] != null) {
      _classList = [];
      json['classList'].forEach((v) {
        _classList?.add(ClassItem.fromJson(v));
      });
    }
  }
  CourseItem? _course;
  List<ClassItem>? _classList;
  CourseDetailModel copyWith({
    CourseItem? course,
    List<ClassItem>? classList,
  }) =>
      CourseDetailModel(
        course: course ?? _course,
        classList: classList ?? _classList,
      );
  CourseItem? get course => _course;
  List<ClassItem>? get classList => _classList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_course != null) {
      map['course'] = _course?.toJson();
    }
    if (_classList != null) {
      map['classList'] = _classList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
