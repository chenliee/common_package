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
    dio.options.headers = {'content-type': 'application/json', 'time-stamp': DateTime.now().millisecondsSinceEpoch};
  }
}
