package com.example.push

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.decodeFromJsonElement

class MyFirebaseMessagingService : FirebaseMessagingService() {
    override fun onMessageReceived(remoteMessage: RemoteMessage) {
        Log.d(TAG, "From: " + remoteMessage.from)
        Log.d(TAG, "Message data payload: " + remoteMessage.data)
        if (remoteMessage.data.isNotEmpty()) {
            Log.d(TAG, "Message data payload: " + remoteMessage.data)
            val jsonString = """${remoteMessage.data["params"]}"""
            val jsonObject = Json.parseToJsonElement(jsonString)
            val resultMap = Json.decodeFromJsonElement<Map<String, String>>(jsonObject)
            val queryParams: MutableMap<String, Any> = mutableMapOf(
                "cid" to "fcm",
                "code" to (resultMap["code"] ?: "")
            )
            PushPlugin.instance.toFlutterMethod("deviceBinging", queryParams)
            // 数据消息
        }
        if (remoteMessage.notification != null) {
            Log.d(TAG, "Message Notification Body: " + remoteMessage.notification!!.body)
            val title: String? = remoteMessage.notification!!.title
            val message: String? = remoteMessage.notification!!.body
            title?.let { message?.let { it1 -> showNotification(it, it1) } }
            // 通知消息
        }
    }

    override fun onNewToken(token: String) {
        Log.d(TAG, "Refreshed token: $token")
        // If you want to send messages to this application instance or
        // manage this apps subscriptions on the server side, send the
        // Instance ID token to your app server.
        sendRegistrationToServer(token)
    }

    private fun sendRegistrationToServer(token: String) {
        Log.d("TOKEN ", token)
    }

    private fun showNotification(title: String, message: String) {
        val notificationManager: NotificationManager =
            getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager

        // 创建通知渠道（仅适用于 Android 8.0 及更高版本）
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID, CHANNEL_NAME, NotificationManager.IMPORTANCE_DEFAULT
            )
            notificationManager.createNotificationChannel(channel)
        }
        val smallIconResId: Int = android.R.drawable.sym_def_app_icon
        val notificationIntent = Intent(this, NotificationReceiver::class.java)
        val pendingIntent: PendingIntent = PendingIntent.getBroadcast(
            this,
            0,
            notificationIntent,
            PendingIntent.FLAG_UPDATE_CURRENT
        )
        // 创建通知
        val builder: NotificationCompat.Builder = NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle(title)
            .setContentText(message)
            .setSmallIcon(smallIconResId)
            .setContentIntent(pendingIntent)
            .setAutoCancel(true)
        notificationManager.notify(0, builder.build())
    }

    companion object {
        private const val TAG = "FCM Service"
        private const val CHANNEL_ID = "my_channel"
        private val CHANNEL_NAME: CharSequence = "My Channel"
    }
}