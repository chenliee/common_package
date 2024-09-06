import 'package:macauscholar/http/scholar_dio.dart';
import 'package:service_package/utils/debug.dart';

class BusResponse {
  static Future setBusDefaultRoute({required String? id, required String? code}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "code": code,
      })
        ..removeWhere((key, value) => value == null);

      Map<String, dynamic> res = await ScholarDio.getInstance().post(
        url: "/api/lbs/bus/$id",
        params: params,
      );

      return res;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
