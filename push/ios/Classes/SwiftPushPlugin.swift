import Flutter
import UIKit
import UserNotifications

public class SwiftPushPlugin: NSObject, FlutterPlugin, UNUserNotificationCenterDelegate{
  static let instance = SwiftPushPlugin()

  private var tokenResult: FlutterResult?
  private var channel: FlutterMethodChannel!

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "push_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftPushPlugin.instance
    instance.channel = channel
    registrar.addApplicationDelegate(instance)
    registrar.addMethodCallDelegate(instance, channel: channel)
    //NetworkManager.shared.startMonitoring()
    let center = UNUserNotificationCenter.current()
        center.delegate = instance
        center.requestAuthorization(options: [.badge, .sound, .alert]) { granted, error in
          if granted {
            UIApplication.shared.registerForRemoteNotifications()
          }
        }
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
        case "getToken":
          if let token = UserDefaults.standard.string(forKey: "apns_token") {
            result(token)
          } else {
              self.tokenResult = { token in
                result(token)
              }
           }
        default:
          result(FlutterMethodNotImplemented)
    }
  }

  public func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
      // 将设备令牌转换为字符串
    let tokenString = deviceToken.reduce("", {$0 + String(format: "%02X", $1)})
    UserDefaults.standard.set(tokenString, forKey: "apns_token")
    if let result = self.tokenResult {
       // 如果 Flutter 端已经请求令牌，则返回令牌值
        result(tokenString)
    }
  }

  public func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
     print("Failed to register for remote notifications with error: \(error.localizedDescription)")
  }

  public func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
       print("收到远程通知:")
       print(userInfo)
  }

  public func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
      let request = notification.request //收到推送的请求
      let content = request.content //收到推送的消息内容
      let userInfo = content.userInfo
      let badge = content.badge //推送的角标
      let body = content.body //推送消息体
      let sound = content.sound //声音
      let subtitle = content.subtitle //推送消息的副标题
      let title = content.title //推送消息的标题
      print(userInfo)
      if let data = userInfo["data"] as? [String: Any],
         let action = data["action"] as? String,
         let params = data["params"] as? [String: Any],
         let code = params["code"] as? String,
         action == "device-registration" {
         print("123")
         var queryParams: Dictionary<String, String> = ["cid": "apns","code": code]
         channel.invokeMethod("deviceBinging", arguments: queryParams)
      }
      if notification.request.trigger is UNPushNotificationTrigger {
          //UNPushNotificationTrigger 触发器，专门用于远程推送，其他一般是本地通知要用到的
      } else {
          //本地通知
      }
      let options: UNNotificationPresentationOptions = []
      completionHandler(options)
  }
}
