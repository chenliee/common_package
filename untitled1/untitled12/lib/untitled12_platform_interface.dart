import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'untitled12_method_channel.dart';

abstract class Untitled12Platform extends PlatformInterface {
  /// Constructs a Untitled12Platform.
  Untitled12Platform() : super(token: _token);

  static final Object _token = Object();

  static Untitled12Platform _instance = MethodChannelUntitled12();

  /// The default instance of [Untitled12Platform] to use.
  ///
  /// Defaults to [MethodChannelUntitled12].
  static Untitled12Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Untitled12Platform] when
  /// they register themselves.
  static set instance(Untitled12Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
