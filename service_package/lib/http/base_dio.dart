import 'dart:io';

import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

import '../service_package.dart';

class BaseDio {
  static BaseDio? _instance;

  //static String bashUrl = 'http://10.100.203.20:7002';
  //static String bashUrl = 'http://10.100.202.100:7002';
  static String baseUrl = Env.envConfig.appDomain;
  Function? onUnauthorized;

  static BaseDio getInstance() {
    _instance ??= BaseDio();
    return _instance!;
  }

  Function get onUnauthorizedCallback => _instance?.onUnauthorized ?? () {};

  BaseOptions options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(milliseconds: 30000),
    receiveTimeout: const Duration(milliseconds: 30000),
  );

  Dio dio = Dio();

  BaseDio() {
    dio.options = options;
    dio.options.headers = {
      'content-type': 'application/json',
    };

    dio.interceptors.addAll([
      InterceptorsWrapper(
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          final responseData = response.data;
          if (responseData is Map) {
            if (responseData.containsKey('success') &&
                responseData['success'] == false) {
              if (responseData.containsKey('message') &&
                  (responseData['message'] == 'Unauthorized' ||
                      responseData['message'] ==
                          'DeviceAccessToken Unauthorized')) {
                onUnauthorizedCallback();
              }
            }
          }
          return handler.next(response); // 必须调用handler.next(response)
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {
          final responseData = error.response?.data;
          if (responseData is Map) {
            if (responseData.containsKey('success') &&
                responseData['success'] == false) {
              if (responseData.containsKey('message') &&
                  (responseData['message'] == 'Unauthorized' ||
                      responseData['message'] ==
                          'DeviceAccessToken Unauthorized')) {
                onUnauthorizedCallback();
              }
            }
          }
          return handler.next(error); // 必须调用handler.next(error)
        },
      ),
    ]);
  }

  Future<dynamic> get(
      {required String url,
      Map<String, dynamic>? params,
      Map<String, dynamic>? data,
      bool isApi = true}) async {
    Map<String, dynamic>? res =
        await requestHttp(url, 'get', params, isApi: isApi, data: data);
    throwException(res, isApi, url, params);
    return res?['data'];
  }

  Future<dynamic> post(
      {required String url, Object? params, bool isApi = true}) async {
    Map<String, dynamic>? res =
        await requestHttp(url, 'post', params, isApi: isApi);
    throwException(res, isApi, url, params);
    return res?['data'];
  }

  Future<dynamic> put(
      {required String url,
      Map<String, dynamic>? params,
      bool isApi = true}) async {
    Map<String, dynamic>? res =
        await requestHttp(url, 'put', params, isApi: isApi);
    throwException(res, isApi, url, params);
    return res?['data'];
  }

  Future<dynamic> delete(
      {required String url,
      Map<String, dynamic>? params,
      bool isApi = true}) async {
    Map<String, dynamic>? res =
        await requestHttp(url, 'delete', params, isApi: isApi);
    throwException(res, isApi, url, params);
    return res?['data'];
  }

  Future<dynamic> patch(
      {required String url,
      Map<String, dynamic>? params,
      bool isApi = true}) async {
    Map<String, dynamic> res =
        await requestHttp(url, 'patch', params, isApi: isApi);
    throwException(res, isApi, url, params);
    return res['data'];
  }

  throwException(
      Map<String, dynamic>? res, bool isApi, String url, dynamic params) {
    if (res != null) {
      if (res.containsKey('success') && !res['success']) {
        String message = Env.appEnv != 'PRO'
            ? '${res['message'] ?? res['msg'] ?? "未知錯誤"},url:$url'
            : res['message'] ?? res['msg'] ?? "未知錯誤";
        ToastInfo.toastInfo(msg: message, isApi: isApi);
        //throw 'Url:$url,\nRequest:$params,\nMessage:${res['message']}';
        throw res['message'] ?? res['msg'];
      }
    }
  }

  Future<dynamic> requestHttp(
    String url,
    String method,
    dynamic params, {
    bool isApi = true,
    Map<String, dynamic>? data,
    bool retry = false,
  }) async {
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
    Map<String, dynamic> headers =
        Map<String, dynamic>.from(dio.options.headers);
    if (headers['content-type'] != 'application/json') {
      headers['content-type'] = 'application/json';
    }
    headers['Authorization'] = ServiceGlobal.instance.token.isNotEmpty
        ? 'Bearer ${ServiceGlobal.instance.token}'
        : null;
    if (ServiceGlobal.instance.deviceAccessToken.isNotEmpty) {
      headers['DEVICE-ACCESS-TOKEN'] =
          ServiceGlobal.instance.deviceAccessToken.isNotEmpty
              ? ServiceGlobal.instance.deviceAccessToken
              : null;
    }
    headers.removeWhere((key, value) => value == null);
    dio.options.headers = headers;
    try {
      if (method == 'get') {
        if (params != null && params.isNotEmpty) {
          response = await dio.get(url,
              queryParameters: params, options: Options(headers: data));
        } else {
          response = await dio.get(url, options: Options(headers: data));
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
        response = await dio.delete(url, queryParameters: params);
      } else if (method == 'patch') {
        response = await dio.patch(url, queryParameters: params);
      }
      return response!.data;
    } on SocketException catch (e) {
      ToastInfo.toastInfo(msg: "網絡請求超時，請檢查網絡$e");
      throw "網絡不給力，請求超時";
    } on DioException catch (error) {
      if (error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.connectionTimeout) {
        if (retry == false) {
          return await retryRequest(url, method, params);
        } else {
          ToastInfo.toastInfo(msg: "網絡請求超時，請檢查網絡");
          throw "請求超時，請嘗試重新刷新";
        }
      }
      String message = error.response?.data is Map
          ? (error.response?.data['message'] ??
              error.response?.data ??
              error.message.toString())
          : error.message.toString();
      ToastInfo.toastInfo(
          msg: '${Env.appEnv != 'PRO' ? {
              'code': error.response?.statusCode ?? 0,
              'url': url,
              'data':
                  error.response?.data.toString() ?? error.message.toString()
            } : message}',
          isApi: isApi);
      Debug.printMsg(
          error.response?.data.toString() ?? error.message.toString(),
          StackTrace.current);
      throw Env.appEnv != 'PRO'
          ? {
              'code': error.response?.statusCode ?? 0,
              'url': url,
              'data':
                  error.response?.data.toString() ?? error.message.toString()
            }
          : message;
    } on Exception catch (err) {
      ToastInfo.toastInfo(msg: err.toString(), isApi: isApi);
    }
  }

  Future<dynamic> retryRequest(
    String url,
    String method,
    Map<String, dynamic>? params, {
    bool isApi = true,
    Map<String, dynamic>? data,
  }) async {
    try {
      return await requestHttp(url, method, params,
          isApi: isApi, data: data, retry: true);
    } catch (error) {
      // 处理重新请求时的错误，例如超过重试次数限制等
      // ...
    }
  }

  Future<dynamic> upload({required String url, required FormData data}) async {
    if (ServiceGlobal.instance.token.isNotEmpty) {
      dio.options.headers = {
        'content-type': 'multipart/form-data',
        'Authorization': 'Bearer ${ServiceGlobal.instance.token}'
      };
    } else {
      dio.options.headers = {
        'content-type': 'multipart/form-data',
      };
    }
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
      response = await dio.post(url, data: data);
      return response.data;
    } on DioException catch (error) {
      ToastInfo.toastInfo(
          msg: error.response?.data ?? error.message, isApi: true);
      Debug.printMsg(error.message ?? '', StackTrace.current);
      throw error.response!.data;
    }
  }
}
