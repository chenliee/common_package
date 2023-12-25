package com.example.push;

import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import io.flutter.plugin.common.MethodChannel;

public class NotificationReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        ///Log.i("onReceive", "调用Flutter=>${methodName}");
        Map<String, Object> data = (Map<String, Object>) intent.getSerializableExtra("data");
        Log.e("123123123","sdasdasdasdas");
        PushPlugin.instance.toFlutterMethod("pushClickAction",data);
    }

    private static Map<String, Object> toHashMap(JSONObject jsonObject) throws JSONException {
        Map<String, Object> hashMap = new HashMap<>();
        Iterator<String> keys = jsonObject.keys();
        while (keys.hasNext()) {
            String key = keys.next();
            Object value = jsonObject.get(key);
            if (value instanceof JSONObject) {
                // 递归处理嵌套的 JSON 对象
                value = toHashMap((JSONObject) value);
            }
            hashMap.put(key, value);
        }
        return hashMap;
    }
}