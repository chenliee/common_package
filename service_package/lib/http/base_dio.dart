import 'package:dio/adapter.dart';

import '../service_package.dart';

class BaseDio {
  static BaseDio? _instance;
  //static String bashUrl = 'http://10.100.203.20:7002';
  //static String bashUrl = 'http://10.100.202.100:7002';
  static String bashUrl = Env.envConfig.appDomain;

  static BaseDio getInstance() {
    _instance ??= BaseDio();
    return _instance!;
  }

  BaseOptions options = BaseOptions(
    baseUrl: bashUrl,
    connectTimeout: 1000,
    receiveTimeout: 30000,
  );

  Dio dio = Dio();

  BaseDio() {
    dio.options = options;
    dio.options.headers = {
      'content-type': 'application/json',
    };
  }

  Future<dynamic> get(
      {required String url, Map<String, dynamic>? params}) async {
    return requestHttp(url, 'get', params);
  }

  Future<dynamic> post({
    required String url,
    Map<String, dynamic>? params,
  }) async {
    return requestHttp(url, "post", params);
  }

  Future<dynamic> put({
    required String url,
    Map<String, dynamic>? params,
  }) async {
    return requestHttp(url, "put", params);
  }

  Future<dynamic> delete({
    required String url,
    Map<String, dynamic>? params,
  }) async {
    return requestHttp(url, "delete", params);
  }

  Future<dynamic> patch({
    required String url,
    Map<String, dynamic>? params,
  }) async {
    return requestHttp(url, "patch", params);
  }

  Future<dynamic> requestHttp(
      String url, String method, Map<String, dynamic>? params) async {
    if (ServiceGlobal.token.isNotEmpty) {
      dio.options.headers = {
        'content-type': 'application/json',
        'Authorization': ' Bearer ${ServiceGlobal.token}'
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
      Debug.printMsg(error.message, StackTrace.current);
    }
  }

  Future<dynamic> upload({required String url, required FormData data}) async {
    if (ServiceGlobal.token.isNotEmpty) {
      dio.options.headers = {
        'content-type': 'multipart/form-data',
        'Authorization': ' Bearer ${ServiceGlobal.token}'
      };
    } else {
      dio.options.headers = {
        'content-type': 'multipart/form-data',
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
      response = await dio.post(url, data: data);
      return response.data;
    } on DioError catch (error) {
      Debug.printMsg(error.message, StackTrace.current);
    }
  }
}
