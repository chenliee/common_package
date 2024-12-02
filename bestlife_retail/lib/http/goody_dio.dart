import 'dart:io';

import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:service_package/service_package.dart';

class GoodyDio extends BaseDio {
  static GoodyDio? _instance;
  static GoodyDio getInstance() {
    _instance ??= GoodyDio();
    return _instance!;
  }

  static final EnvConfig _devConfig = EnvConfig(
    appTitle: "DEV",
    // appDomain: "http://10.100.203.206:7001",
    // appDomain: "http://10.100.202.100:7001",
    appDomain: "https://dev.bestlife-retail.com:20443",
  );
  // 测试环境
  static final EnvConfig _uatConfig = EnvConfig(
    appTitle: "UAT",
    // appDomain: "http://10.100.203.206:7001",
    appDomain: "https://uat.bestlife-retail.com",
  );
  // 发布环境
  static final EnvConfig _proConfig = EnvConfig(
    appTitle: "PRO",
    appDomain: "https://www.bestlife-retail.com",
  );

  static EnvConfig _getEnvConfig() {
    switch (Env.appEnv) {
      case EnvName.dev:
        return _devConfig;
      case EnvName.uat:
        return _uatConfig;
      case EnvName.pro:
        return _proConfig;
      default:
        return _devConfig;
    }
  }

  GoodyDio() {
    dio.options = BaseOptions(
      baseUrl: _getEnvConfig().appDomain,
      connectTimeout: const Duration(milliseconds: 15000),
      receiveTimeout: const Duration(milliseconds: 30000),
    );
    dio.options.headers = {
      'content-type': 'application/json',
      'time-stamp': DateTime.now().millisecondsSinceEpoch
    };
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
    dio.options.headers = {
      'content-type': 'application/json',
      'Authorization': ServiceGlobal.instance.merchantToken.isNotEmpty
          ? 'Bearer ${ServiceGlobal.instance.merchantToken}'
          : ServiceGlobal.instance.token.isNotEmpty
              ? 'Bearer ${ServiceGlobal.instance.token}'
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
