import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:service_package/env/env.dart';
import 'package:service_package/http/base_dio.dart';
import 'package:service_package/utils/debug.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PushDio extends BaseDio {
  static PushDio? _instance;
  static PushDio getInstance() {
    _instance ??= PushDio();
    return _instance!;
  }

  @override
  Future<dynamic> requestHttp(
    String url,
    String method,
    dynamic params, {
    bool isApi = true,
    Map<String, dynamic>? data,
    bool retry = false,
  }) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? accessToken = pref.getString('accessToken');
    if (accessToken != null) {
      dio.options.headers = {
        'content-type': 'application/json',
        'Authorization': 'Bearer $accessToken'
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
