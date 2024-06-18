import 'package:gold/gold.dart';
import 'package:macauscholar/macauscholar.dart';

class CourseModel {
  CourseModel({
    List<PositionItem>? courseAd,
    List<CategoryItem>? categoryCourse,
  }) {
    _courseAd = courseAd;
    _categoryCourse = categoryCourse;
  }

  CourseModel.fromJson(dynamic json) {
    if (json['courseAd'] != null) {
      _courseAd = [];
      json['courseAd'].forEach((v) {
        _courseAd?.add(PositionItem.fromJson(v));
      });
    }
    if (json['categoryCourse'] != null) {
      _categoryCourse = [];
      json['categoryCourse'].forEach((v) {
        _categoryCourse?.add(CategoryItem.fromJson(v));
      });
    }
  }
  List<PositionItem>? _courseAd;
  List<CategoryItem>? _categoryCourse;

  CourseModel copyWith({
    List<PositionItem>? courseAd,
    List<CategoryItem>? categoryCourse,
  }) =>
      CourseModel(
        courseAd: courseAd ?? _courseAd,
        categoryCourse: categoryCourse ?? _categoryCourse,
      );
  List<PositionItem>? get courseAd => _courseAd;
  List<CategoryItem>? get categoryCourse => _categoryCourse;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_courseAd != null) {
      map['courseAd'] = _courseAd?.map((v) => v.toJson()).toList();
    }
    if (_categoryCourse != null) {
      map['categoryCourse'] = _categoryCourse?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
