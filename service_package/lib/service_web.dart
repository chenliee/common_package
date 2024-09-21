// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

/// A web implementation of the UntitledPlatform of the Untitled plugin.
class ServiceWeb {
  static Future<void> openWebPage(String url, {String type = '_blank'}) async {
    html.window.open(url, type);
  }
}
