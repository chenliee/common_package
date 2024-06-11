import 'dart:io';

import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
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
    dio.options.headers = {
      'content-type': 'application/json',
      'Authorization': ServiceGlobal.instance.token.isNotEmpty
          ? 'Bearer ${ServiceGlobal.instance.token}'
          : ServiceGlobal.instance.merchantToken.isNotEmpty
              ? 'Bearer ${ServiceGlobal.instance.merchantToken}'
              : null
    };
    Response? response;
    if (!kIsWeb) {
      (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
        final HttpClient client =
            HttpClient(context: SecurityContext(withTrustedRoots: false));
        client.badCertificateCallback =
            ((X509Certificate cert, String host, int port) => true);
        return client;
      };
    }
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
    } on DioException catch (error) {
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
