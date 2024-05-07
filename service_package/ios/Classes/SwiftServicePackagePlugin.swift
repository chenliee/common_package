import Flutter
import UIKit

public class SwiftServicePackagePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "service_package", binaryMessenger: registrar.messenger())
    let instance = SwiftServicePackagePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    print(call.method)
    switch call.method {
        case "getIdentifier":
          let id = getDeviceIdentifier()
          result(id)
        default:
            print("call.method")
          result(FlutterMethodNotImplemented)
    }
  }

    private func getDeviceIdentifier() -> String {
        // 在此添加获取 iOS 设备唯一标识符的代码
        return UIDevice.current.identifierForVendor?.uuidString ?? ""
      }
}
