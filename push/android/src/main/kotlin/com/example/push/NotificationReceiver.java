package com.example.push;

import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import java.util.HashMap;
import java.util.Map;

import io.flutter.plugin.common.MethodChannel;

public class NotificationReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        ///Log.i("onReceive", "调用Flutter=>${methodName}");
        PushPlugin.instance.toFlutterMethod("pushClickAction",null);
    }
}