package com.example.push

import android.content.Context
import com.google.android.gms.tasks.OnCompleteListener
import com.google.android.gms.tasks.Task
import com.google.firebase.messaging.FirebaseMessaging
import io.flutter.plugin.common.MethodChannel
import com.google.firebase.FirebaseApp

class TokenFunction(){
    fun getToken(result: MethodChannel.Result,appId: String?) {
        FirebaseMessaging.getInstance().token
            .addOnCompleteListener(object : OnCompleteListener<String> {
                override fun onComplete(task: Task<String>) {
                    if (!task.isSuccessful) {
                        result.error("TOKEN_ERROR", "Failed to get token.", null)
                        return
                    }
                    val token: String? = task.result
                    result.success(token)
                }
            })
    }

    fun init(context: Context){
        FirebaseApp.initializeApp(context)
    }
}