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
    //appDomain: "http://10.100.203.171:18985/",
    appDomain: "https://member.dev.macauscholar.com:20443",
  );
  // 测试环境
  static final EnvConfig _uatConfig = EnvConfig(
    appTitle: "UAT",
    appDomain: "https://member.uat.macauscholar.com",
  );
  // 发布环境
  static final EnvConfig _proConfig = EnvConfig(
    appTitle: "PRO",
    appDomain: "https://member.macauscholar.com",
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
