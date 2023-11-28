import 'package:dio/adapter.dart';

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

  BaseOptions options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 30000,
  );

  Dio dio = Dio();

  BaseDio() {
    dio.options = options;
    dio.options.headers = {
      'content-type': 'application/json',
    };

    dio.interceptors.add(InterceptorsWrapper(
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        final responseData = response.data;
        if (responseData is Map) {
          if (responseData.containsKey('success') &&
              responseData['success'] == false) {
            if (responseData.containsKey('message') &&
                (responseData['message'] == 'Unauthorized' ||
                    responseData['message'] ==
                        'DeviceAccessToken Unauthorized')) {
              if (onUnauthorized != null) onUnauthorized!();
            }
          }
        }
        return handler.next(response); // 必须调用handler.next(response)
      },
      onError: (DioError error, ErrorInterceptorHandler handler) {
        final responseData = error.response?.data;
        if (responseData is Map) {
          if (responseData.containsKey('success') &&
              responseData['success'] == false) {
            if (responseData.containsKey('message') &&
                (responseData['message'] == 'Unauthorized' ||
                    responseData['message'] ==
                        'DeviceAccessToken Unauthorized')) {
              if (onUnauthorized != null) onUnauthorized!();
            }
          }
        }
        return handler.next(error); // 必须调用handler.next(error)
      },
    ));
  }

  Future<dynamic> get(
      {required String url,
      Map<String, dynamic>? params,
      bool isApi = true}) async {
    Map<String, dynamic> res = await requestHttp(url, 'get', params);
    throwException(res, isApi, url, params);
    return res['data'];
  }

  Future<dynamic> post(
      {required String url,
      Map<String, dynamic>? params,
      bool isApi = true}) async {
    dynamic res = await requestHttp(url, 'post', params);
    throwException(res, isApi, url, params);
    return res['data'];
  }

  Future<dynamic> put(
      {required String url,
      Map<String, dynamic>? params,
      bool isApi = true}) async {
    Map<String, dynamic> res = await requestHttp(url, 'put', params);
    throwException(res, isApi, url, params);
    return res['data'];
  }

  Future<dynamic> delete(
      {required String url,
      Map<String, dynamic>? params,
      bool isApi = true}) async {
    Map<String, dynamic> res = await requestHttp(url, 'delete', params);
    throwException(res, isApi, url, params);
    return res['data'];
  }

  Future<dynamic> patch(
      {required String url,
      Map<String, dynamic>? params,
      bool isApi = true}) async {
    Map<String, dynamic> res = await requestHttp(url, 'patch', params);
    throwException(res, isApi, url, params);
    return res['data'];
  }

  throwException(Map<String, dynamic> res, bool isApi, String url,
      Map<String, dynamic>? params) {
    if (res.containsKey('success') && !res['success']) {
      ToastInfo.toastInfo(
          msg: '${res['message'] ?? res['msg'] ?? "未知錯誤"}', isApi: isApi);
      //throw 'Url:$url,\nRequest:$params,\nMessage:${res['message']}';
      throw res['message'] ?? res['msg'];
    }
  }

  Future<dynamic> requestHttp(
      String url, String method, Map<String, dynamic>? params) async {
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
      ToastInfo.toastInfo(
          msg: error.response?.data.toString() ?? error.message.toString(),
          isApi: true);
      Debug.printMsg(
          error.response?.data.toString() ?? error.message.toString(),
          StackTrace.current);
      throw {
        'code': error.response?.statusCode ?? 0,
        'data': error.response?.data.toString() ?? error.message.toString()
      };
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
      ToastInfo.toastInfo(msg: error.message);
      Debug.printMsg(error.message, StackTrace.current);
      throw error.response!.data;
    }
  }
}
