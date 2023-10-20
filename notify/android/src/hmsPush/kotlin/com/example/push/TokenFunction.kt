package com.example.push

import android.util.Log
import com.example.push.PushPlugin.Companion.mPluginBinding
import com.huawei.hms.aaid.HmsInstanceId
import com.huawei.hms.common.ApiException
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import android.content.Context

class TokenFunction(){
    fun getToken(result: MethodChannel.Result,appId: String?) {
        GlobalScope.launch(Dispatchers.IO) {
            try {
                val token = HmsInstanceId.getInstance(mPluginBinding.applicationContext)
                    .getToken(appId!!, "HCM")
                print(token)
                withContext(Dispatchers.Main) {
                    result.success(token)
                }
            }   catch (e: ApiException) {
                Log.e("1", "getToken() failed: " + e.message)
            }
        }
    }

    fun init(context: Context){

    }
}