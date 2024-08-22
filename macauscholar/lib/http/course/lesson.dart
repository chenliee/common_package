import 'package:macauscholar/model/lesson_item_model.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
/// package:macauscholar/model/lesson_item_model.dart
@ApiGen('/course', file: 'LessonResponse', dio: 'MacauDio')
abstract class Order {
  @ApiGen(
    '/api/lesson/',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'sort': '@C_sort ?? \'{"createdAt": "desc"}\'',
      'filter': '@C_filter',
      'keyword': '@C_keyword'
    },
    method: ApiGen.GET,
    target: 'LessonItemModel',
  )
  Future<List<LessonItemModel>?> getLessonList(
      {required int page, String? sort, Map? filter, int? size, String? keyword});
}


