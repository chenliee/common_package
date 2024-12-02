// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

class ServicePackagePlugin {
  // Web平台特定的插件注册逻辑
  static void registerWith(Registrar registrar) {
    print('ServicePackagePlugin registered for Web');
    // 注册 Web 平台插件的逻辑，如果需要和 JavaScript 交互，可以在此处实现
  }

  // Web 平台的方法实现（如果有）
  Future<String> getPlatformVersion() async {
    return 'Web Platform Version';
  }

  static Future<void> openWebPage(String url, {String type = '_blank'}) async {
    html.window.open(url, type);
  }
}
