package com.example.push

import android.content.Context
import android.util.Log
import com.tencent.android.tpush.XGIOperateCallback
import com.tencent.android.tpush.XGPushConfig
import com.tencent.android.tpush.XGPushManager
import io.flutter.plugin.common.MethodChannel

class TokenFunction(){
    fun getToken(result: MethodChannel.Result,appId: String?) {
        val token: String = XGPushConfig.getToken(PushPlugin.mPluginBinding.applicationContext)
        result.success(token)
    }

    fun init(context: Context){
        XGPushManager.registerPush(context, object : XGIOperateCallback {
            override fun onSuccess(data: Any, flag: Int) {
                Log.d("TPush", "注册成功，设备token为：$data")
            }
            override fun onFail(data: Any?, errCode: Int, msg: String) {
                Log.d("TPush", "注册失败，错误码：$errCode,错误信息：$msg")
            }
        })
    }
}