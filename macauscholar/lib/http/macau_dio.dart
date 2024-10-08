import 'package:service_package/service_package.dart';

class MacauDio extends BaseDio {
  static MacauDio? _instance;
  static MacauDio getInstance() {
    _instance ??= MacauDio();
    return _instance!;
  }

  static final EnvConfig _devConfig = EnvConfig(
    appTitle: "DEV",
    appDomain: "https://saas.dev.macauscholar.com:20443",
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

  MacauDio() {
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
