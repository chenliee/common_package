import 'package:article/http/merchant_dio.dart';
import 'package:member/model/relation_item.dart';
import 'package:service_package/utils/debug.dart';

class RelationResponse {
  static Future<List<RelationItem>> getRelationTypeList() async {
    try {
      List<RelationItem> list = [];

      List<dynamic> jsonList = await MerchantDio.getInstance()
          .get(url: '/member/api/merchant/scholar/user/relationship_type/');
      for (dynamic item in jsonList) {
        list.add(RelationItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
