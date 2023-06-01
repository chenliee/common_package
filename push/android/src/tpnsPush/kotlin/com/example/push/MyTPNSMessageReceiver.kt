package com.example.push

import android.content.Context
import android.util.Log
import com.tencent.android.tpush.XGPushBaseReceiver
import com.tencent.android.tpush.XGPushClickedResult
import com.tencent.android.tpush.XGPushRegisterResult
import com.tencent.android.tpush.XGPushShowedResult
import com.tencent.android.tpush.XGPushTextMessage
import kotlinx.serialization.Serializable
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.decodeFromJsonElement

class MyTPNSMessageReceiver : XGPushBaseReceiver() {

    override fun onRegisterResult(p0: Context?, p1: Int, p2: XGPushRegisterResult?) {
        TODO("Not yet implemented")
    }

    override fun onTextMessage(context: Context, message: XGPushTextMessage) {
        try {
            @Serializable
            data class RegistrationParams(
                val code: String
            )
            @Serializable
            data class RegistrationRequest(
                val action: String,
                val params: RegistrationParams
            )
            Log.d(TAG, "Received text message: ${message.customContent}")
            val jsonString = """${message.customContent}"""
            val registrationRequest = Json.decodeFromString<RegistrationRequest>(jsonString)
            val queryParams: MutableMap<String, Any> = mutableMapOf(
                "cid" to "tpns",
                "code" to (registrationRequest.params.code)
            )
            PushPlugin.instance.toFlutterMethod("deviceBinging", queryParams)
        }
        catch (e:Throwable){
            Log.d(
                TAG,
                "onNotificationClickedResult error: $e"
            )
        }
    }

    override fun onNotificationShowedResult(context: Context, result: XGPushShowedResult) {
        // 通知展示事件处理
        try {
            Log.d(TAG, "Received notification showed result: $result")
        } catch (e:Throwable ){
            Log.d(
                TAG,
                "onNotificationClickedResult error: $e"
            )
        }
    }

    override fun onUnregisterResult(p0: Context?, p1: Int) {
        TODO("Not yet implemented")
    }

    override fun onSetTagResult(p0: Context?, p1: Int, p2: String?) {
        TODO("Not yet implemented")
    }

    override fun onDeleteTagResult(p0: Context?, p1: Int, p2: String?) {
        TODO("Not yet implemented")
    }

    override fun onSetAccountResult(p0: Context?, p1: Int, p2: String?) {
        TODO("Not yet implemented")
    }

    override fun onDeleteAccountResult(p0: Context?, p1: Int, p2: String?) {
        TODO("Not yet implemented")
    }

    override fun onSetAttributeResult(p0: Context?, p1: Int, p2: String?) {
        TODO("Not yet implemented")
    }

    override fun onQueryTagsResult(p0: Context?, p1: Int, p2: String?, p3: String?) {
        TODO("Not yet implemented")
    }

    override fun onDeleteAttributeResult(p0: Context?, p1: Int, p2: String?) {
        TODO("Not yet implemented")
    }

    override fun onNotificationClickedResult(p0: Context?, p1: XGPushClickedResult?) {
        TODO("Not yet implemented")
    }

    companion object {
        private const val TAG = "TPNS Receiver"
    }
}

