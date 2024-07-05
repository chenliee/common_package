import 'dart:convert';

import 'package:rating/model/comment_item.dart';
import 'package:storage/model/file_item.dart';

/// studyDocument : {"total":1,"list":[{"id":351,"url":"https://storage.dev.heyday-catering.com:20443/saas-storage/dagu/d29425ed3589e2181c37ce3be6460a5359734dd56a411d1b7271044ded2cc29e_%E5%84%92%E6%9E%97App%E7%87%9F%E9%8A%B7%E6%96%B9%E6%A1%88.pdf","mime":"application/pdf","name":"儒林App營銷方案.pdf","size":"1280673","hash":"d29425ed3589e2181c37ce3be6460a5359734dd56a411d1b7271044ded2cc29e","path":"dagu/d29425ed3589e2181c37ce3be6460a5359734dd56a411d1b7271044ded2cc29e_儒林App營銷方案.pdf"}]}
/// commentList : {"list":[{"id":12,"isanonymous":false,"date":"2024-07-04T13:59:40.000Z","userId":"孙笑川","userItem":{},"description":"不錯啊今天","satisfied":null,"label":null,"createdAt":"2024-07-04T05:41:15.575Z","files":[],"targetId":2,"deleted":false,"projectId":1,"relatedType":"student","relatedId":"SS220005","Score":[{"id":12,"userId":null,"score":0,"createdAt":"2024-07-04T05:41:15.575Z","deleted":false,"commentId":12}],"commentTags":[{"id":12,"commentId":12,"title":"老師點評","targetId":"teacher_rate"}]},{"id":11,"isanonymous":false,"date":"2024-07-04T13:59:38.000Z","userId":"孙笑川","userItem":{},"description":"部分完成","satisfied":null,"label":null,"createdAt":"2024-07-04T05:38:58.584Z","files":[],"targetId":2,"deleted":false,"projectId":1,"relatedType":"student","relatedId":"SS220005","Score":[{"id":11,"userId":null,"score":0,"createdAt":"2024-07-04T05:38:58.584Z","deleted":false,"commentId":11}],"commentTags":[{"id":11,"commentId":11,"title":"其他","targetId":"other"}]},{"id":10,"isanonymous":false,"date":"2024-07-04T13:59:35.000Z","userId":"孙笑川","userItem":{},"description":"部分完成","satisfied":null,"label":null,"createdAt":"2024-07-04T05:38:49.206Z","files":[],"targetId":2,"deleted":false,"projectId":1,"relatedType":"student","relatedId":"SS220005","Score":[{"id":10,"userId":null,"score":0,"createdAt":"2024-07-04T05:38:49.206Z","deleted":false,"commentId":10}],"commentTags":[{"id":10,"commentId":10,"title":"常識","targetId":"nous"}]},{"id":9,"isanonymous":false,"date":"2024-07-04T13:59:33.000Z","userId":"孙笑川","userItem":{},"description":"部分完成","satisfied":null,"label":null,"createdAt":"2024-07-04T05:38:21.368Z","files":[],"targetId":2,"deleted":false,"projectId":1,"relatedType":"student","relatedId":"SS220005","Score":[{"id":9,"userId":null,"score":0,"createdAt":"2024-07-04T05:38:21.368Z","deleted":false,"commentId":9}],"commentTags":[{"id":9,"commentId":9,"title":"英語","targetId":"english"}]},{"id":8,"isanonymous":false,"date":"2024-07-04T13:59:30.000Z","userId":"孙笑川","userItem":{},"description":"全部完成","satisfied":null,"label":null,"createdAt":"2024-07-04T05:38:05.349Z","files":[],"targetId":2,"deleted":false,"projectId":1,"relatedType":"student","relatedId":"SS220005","Score":[{"id":8,"userId":null,"score":0,"createdAt":"2024-07-04T05:38:05.349Z","deleted":false,"commentId":8}],"commentTags":[{"id":8,"commentId":8,"title":"數學","targetId":"math"}]},{"id":7,"isanonymous":false,"date":"2024-07-04T13:59:26.000Z","userId":"孙笑川","userItem":{},"description":"全部未完成","satisfied":null,"label":null,"createdAt":"2024-07-04T05:37:17.982Z","files":[],"targetId":2,"deleted":false,"projectId":1,"relatedType":"student","relatedId":"SS220005","Score":[{"id":7,"userId":null,"score":0,"createdAt":"2024-07-04T05:37:17.982Z","deleted":false,"commentId":7}],"commentTags":[{"id":7,"commentId":7,"title":"語文","targetId":"chinese"}]}],"total":6}

LearnCenterModel learnCenterModelFromJson(String str) =>
    LearnCenterModel.fromJson(json.decode(str));
String learnCenterModelToJson(LearnCenterModel data) =>
    json.encode(data.toJson());

class LearnCenterModel {
  LearnCenterModel({
    StudyDocument? studyDocument,
    CommentList? commentList,
  }) {
    _studyDocument = studyDocument;
    _commentList = commentList;
  }

  LearnCenterModel.fromJson(dynamic json) {
    _studyDocument = json['studyDocument'] != null
        ? StudyDocument.fromJson(json['studyDocument'])
        : null;
    _commentList = json['commentList'] != null
        ? CommentList.fromJson(json['commentList'])
        : null;
  }
  StudyDocument? _studyDocument;
  CommentList? _commentList;
  LearnCenterModel copyWith({
    StudyDocument? studyDocument,
    CommentList? commentList,
  }) =>
      LearnCenterModel(
        studyDocument: studyDocument ?? _studyDocument,
        commentList: commentList ?? _commentList,
      );
  StudyDocument? get studyDocument => _studyDocument;
  CommentList? get commentList => _commentList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_studyDocument != null) {
      map['studyDocument'] = _studyDocument?.toJson();
    }
    map['commentList'] = _commentList;
    return map;
  }
}

/// list : [{"id":12,"isanonymous":false,"date":"2024-07-04T13:59:40.000Z","userId":"孙笑川","userItem":{},"description":"不錯啊今天","satisfied":null,"label":null,"createdAt":"2024-07-04T05:41:15.575Z","files":[],"targetId":2,"deleted":false,"projectId":1,"relatedType":"student","relatedId":"SS220005","Score":[{"id":12,"userId":null,"score":0,"createdAt":"2024-07-04T05:41:15.575Z","deleted":false,"commentId":12}],"commentTags":[{"id":12,"commentId":12,"title":"老師點評","targetId":"teacher_rate"}]},{"id":11,"isanonymous":false,"date":"2024-07-04T13:59:38.000Z","userId":"孙笑川","userItem":{},"description":"部分完成","satisfied":null,"label":null,"createdAt":"2024-07-04T05:38:58.584Z","files":[],"targetId":2,"deleted":false,"projectId":1,"relatedType":"student","relatedId":"SS220005","Score":[{"id":11,"userId":null,"score":0,"createdAt":"2024-07-04T05:38:58.584Z","deleted":false,"commentId":11}],"commentTags":[{"id":11,"commentId":11,"title":"其他","targetId":"other"}]},{"id":10,"isanonymous":false,"date":"2024-07-04T13:59:35.000Z","userId":"孙笑川","userItem":{},"description":"部分完成","satisfied":null,"label":null,"createdAt":"2024-07-04T05:38:49.206Z","files":[],"targetId":2,"deleted":false,"projectId":1,"relatedType":"student","relatedId":"SS220005","Score":[{"id":10,"userId":null,"score":0,"createdAt":"2024-07-04T05:38:49.206Z","deleted":false,"commentId":10}],"commentTags":[{"id":10,"commentId":10,"title":"常識","targetId":"nous"}]},{"id":9,"isanonymous":false,"date":"2024-07-04T13:59:33.000Z","userId":"孙笑川","userItem":{},"description":"部分完成","satisfied":null,"label":null,"createdAt":"2024-07-04T05:38:21.368Z","files":[],"targetId":2,"deleted":false,"projectId":1,"relatedType":"student","relatedId":"SS220005","Score":[{"id":9,"userId":null,"score":0,"createdAt":"2024-07-04T05:38:21.368Z","deleted":false,"commentId":9}],"commentTags":[{"id":9,"commentId":9,"title":"英語","targetId":"english"}]},{"id":8,"isanonymous":false,"date":"2024-07-04T13:59:30.000Z","userId":"孙笑川","userItem":{},"description":"全部完成","satisfied":null,"label":null,"createdAt":"2024-07-04T05:38:05.349Z","files":[],"targetId":2,"deleted":false,"projectId":1,"relatedType":"student","relatedId":"SS220005","Score":[{"id":8,"userId":null,"score":0,"createdAt":"2024-07-04T05:38:05.349Z","deleted":false,"commentId":8}],"commentTags":[{"id":8,"commentId":8,"title":"數學","targetId":"math"}]},{"id":7,"isanonymous":false,"date":"2024-07-04T13:59:26.000Z","userId":"孙笑川","userItem":{},"description":"全部未完成","satisfied":null,"label":null,"createdAt":"2024-07-04T05:37:17.982Z","files":[],"targetId":2,"deleted":false,"projectId":1,"relatedType":"student","relatedId":"SS220005","Score":[{"id":7,"userId":null,"score":0,"createdAt":"2024-07-04T05:37:17.982Z","deleted":false,"commentId":7}],"commentTags":[{"id":7,"commentId":7,"title":"語文","targetId":"chinese"}]}]
/// total : 6

CommentList commentListFromJson(String str) =>
    CommentList.fromJson(json.decode(str));
String commentListToJson(CommentList data) => json.encode(data.toJson());

class CommentList {
  CommentList({
    List<CommentItem>? list,
    num? total,
  }) {
    _list = list;
    _total = total;
  }

  CommentList.fromJson(dynamic json) {
    if (json['list'] != null) {
      _list = [];
      json['list'].forEach((v) {
        _list?.add(CommentItem.fromJson(v));
      });
    }
    _total = json['total'];
  }
  List<CommentItem>? _list;
  num? _total;
  CommentList copyWith({
    List<CommentItem>? list,
    num? total,
  }) =>
      CommentList(
        list: list ?? _list,
        total: total ?? _total,
      );
  List<CommentItem>? get list => _list;
  num? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_list != null) {
      map['list'] = _list?.map((v) => v.toJson()).toList();
    }
    map['total'] = _total;
    return map;
  }
}

/// total : 1
/// list : [{"id":351,"url":"https://storage.dev.heyday-catering.com:20443/saas-storage/dagu/d29425ed3589e2181c37ce3be6460a5359734dd56a411d1b7271044ded2cc29e_%E5%84%92%E6%9E%97App%E7%87%9F%E9%8A%B7%E6%96%B9%E6%A1%88.pdf","mime":"application/pdf","name":"儒林App營銷方案.pdf","size":"1280673","hash":"d29425ed3589e2181c37ce3be6460a5359734dd56a411d1b7271044ded2cc29e","path":"dagu/d29425ed3589e2181c37ce3be6460a5359734dd56a411d1b7271044ded2cc29e_儒林App營銷方案.pdf"}]

StudyDocument studyDocumentFromJson(String str) =>
    StudyDocument.fromJson(json.decode(str));
String studyDocumentToJson(StudyDocument data) => json.encode(data.toJson());

class StudyDocument {
  StudyDocument({
    num? total,
    List<FileItem>? list,
  }) {
    _total = total;
    _list = list;
  }

  StudyDocument.fromJson(dynamic json) {
    _total = json['total'];
    if (json['list'] != null) {
      _list = [];
      json['list'].forEach((v) {
        _list?.add(FileItem.fromJson(v));
      });
    }
  }
  num? _total;
  List<FileItem>? _list;
  StudyDocument copyWith({
    num? total,
    List<FileItem>? list,
  }) =>
      StudyDocument(
        total: total ?? _total,
        list: list ?? _list,
      );
  num? get total => _total;
  List<FileItem>? get list => _list;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = _total;
    if (_list != null) {
      map['list'] = _list?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
