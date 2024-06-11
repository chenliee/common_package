import 'package:service_package/service_package.dart';

class ScholarDio extends BaseDio {
  static ScholarDio? _instance;
  static ScholarDio getInstance() {
    _instance ??= ScholarDio();
    return _instance!;
  }

  static final EnvConfig _devConfig = EnvConfig(
    appTitle: "DEV",
    // appDomain: "http://10.100.202.100:7001",
    appDomain: "http://10.100.203.206:7002/",
  );
  // 测试环境
  static final EnvConfig _uatConfig = EnvConfig(
    appTitle: "UAT",
    appDomain: "https://saas.uat.macauscholar.com",
  );
  // 发布环境
  static final EnvConfig _proConfig = EnvConfig(
    appTitle: "PRO",
    appDomain: "https://saas.macauscholar.com",
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

  ScholarDio() {
    dio.options = BaseOptions(
      baseUrl: _getEnvConfig().appDomain,
      connectTimeout: const Duration(milliseconds: 15000),
      receiveTimeout: const Duration(milliseconds: 30000),
    );
    dio.options.headers = {
      'content-type': 'application/json',
    };
  }
}
