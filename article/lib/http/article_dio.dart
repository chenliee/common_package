import 'package:dio/io.dart';
import 'package:service_package/service_package.dart';

class ArticleDio extends BaseDio {
  static ArticleDio? _instance;

  static ArticleDio getInstance() {
    _instance ??= ArticleDio();
    return _instance!;
  }

  @override
  Future<dynamic> requestHttp(
    String url,
    String method,
    Map<String, dynamic>? params, {
    bool isApi = true,
    Map<String, dynamic>? data,
    bool retry = false,
  }) async {
    if (ServiceGlobal.instance.merchantToken.isNotEmpty) {
      dio.options.headers = {
        'content-type': 'application/json',
        'Authorization': 'Bearer ${ServiceGlobal.instance.merchantToken}'
      };
    } else {
      dio.options.headers = {
        'content-type': 'application/json',
      };
    }
    Response? response;
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback = (cert, host, port) {
        return true; // 返回true强制通过
      };
      return null;
    };
    try {
      if (method == 'get') {
        if (params != null && params.isNotEmpty) {
          response = await dio.get(url, queryParameters: params);
        } else {
          response = await dio.get(url);
        }
      } else if (method == 'post') {
        if (params != null && params.isNotEmpty) {
          response = await dio.post(url, data: params);
        } else {
          response = await dio.post(url);
        }
      } else if (method == 'put') {
        if (params != null && params.isNotEmpty) {
          response = await dio.put(url, data: params);
        } else {
          response = await dio.put(url);
        }
      } else if (method == 'delete') {
        response = await dio.delete(url, data: params);
      } else if (method == 'patch') {
        response = await dio.patch(url, data: params);
      }
      return response!.data;
    } on DioError catch (error) {
      Debug.printMsg(error.response?.data ?? error.message, StackTrace.current);
      String message = error.response?.data is Map
          ? (error.response?.data['message'] ??
              error.response?.data ??
              error.message.toString())
          : '';

      throw Env.appEnv != 'PRO'
          ? {
              'code': error.response?.statusCode ?? 0,
              'data':
                  error.response?.data.toString() ?? error.message.toString()
            }
          : message;
    }
  }
}
