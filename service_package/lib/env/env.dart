class Env {
  // 获取到当前环境
  static const appEnv = String.fromEnvironment(EnvName.envKey);

  // 开发环境
  static final EnvConfig _devConfig = EnvConfig(
    appTitle: "devTitle",
   // appDomain: "http://10.100.202.100:7001",
    appDomain: "https://gateway.dev.heyday-catering.com:20443",
  );
  // 测试环境
  static final EnvConfig _uatConfig = EnvConfig(
    appTitle: "uatTitle",
    appDomain: "https://gateway.uat.heyday-catering.com:20443",
  );
  // 发布环境
  static final EnvConfig _proConfig = EnvConfig(
    appTitle: "proTitle",
    appDomain: "https://gateway.heyday-catering.com:20443",
  );

  static EnvConfig get envConfig => _getEnvConfig();

// 根据不同环境返回对应的环境配置
  static EnvConfig _getEnvConfig() {
    switch (appEnv) {
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
}

class EnvConfig {
  final String appTitle;
  final String appDomain;
  EnvConfig({
    required this.appTitle,
    required this.appDomain,
  });
}

abstract class EnvName {
  static const String envKey = "ENV";
  static const String dev = "dev";
  static const String uat = "uat";
  static const String pro = "pro";
}
