package com.example.push

import android.util.Log
import com.huawei.hms.push.HmsMessageService
import com.huawei.hms.push.RemoteMessage
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.decodeFromJsonElement

class MyHmsMessageService : HmsMessageService() {

    override fun onNewToken(token: String?) {
        super.onNewToken(token)
        Log.i(TAG, "onNewToken: $token")
    }

    override fun onMessageReceived(message: RemoteMessage?) {
        super.onMessageReceived(message)
        {"action":"device-registration","params":{"code":"d0sLZ6KeVQMEKDrH"}}
        if (message != null) {
            // 处理透传消息
            if (message.dataOfMap.isNotEmpty()) {
                Log.i(TAG, "onMessageReceived: data=${message.dataOfMap}")
                val jsonString = """${message.dataOfMap["params"]}"""
                val jsonObject = Json.parseToJsonElement(jsonString)
                val resultMap = Json.decodeFromJsonElement<Map<String, String>>(jsonObject)
                val queryParams: MutableMap<String, Any> = mutableMapOf(
                    "cid" to "hms",
                    "code" to (resultMap["code"] ?: "")
                )
                PushPlugin.instance.toFlutterMethod("deviceBinging", queryParams)
            }
            // 处理通知消息
            if (message.notification != null) {
                Log.i(TAG, "onMessageReceived: title=${message.notification.title}")
                Log.i(TAG, "onMessageReceived: body=${message.notification.body}")
            }
        }
    }

    override fun onMessageSent(msgId: String?) {
        super.onMessageSent(msgId)
        Log.i(TAG, "onMessageSent: $msgId")
    }

    override fun onSendError(msgId: String?, exception: Exception?) {
        super.onSendError(msgId, exception)
        Log.i(TAG, "onSendError: $msgId, exception=$exception")
    }

    companion object {
        private const val TAG = "MyPushService"
    }
}