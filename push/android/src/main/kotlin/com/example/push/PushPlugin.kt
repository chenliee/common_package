package com.example.push

import android.content.Context
import android.util.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import com.example.push.TokenFunction

/** PushPlugin */
class PushPlugin: FlutterPlugin, MethodCallHandler {
  private var applicationContext: Context? = null

  constructor() {
    instance = this
  }

  constructor(binding: FlutterPluginBinding, methodChannel: MethodChannel) {
    mPluginBinding = binding
    channel = methodChannel
    instance = this
  }

  constructor(mRegistrar: PluginRegistry.Registrar, mChannel: MethodChannel) {
    channel = mChannel
    registrar = mRegistrar
    instance = this
  }

  companion object {
    lateinit var instance: PushPlugin
    lateinit var mPluginBinding: FlutterPluginBinding
    lateinit var channel: MethodChannel
    lateinit var registrar: PluginRegistry.Registrar

    @JvmStatic
    fun registerWith(registrar: PluginRegistry.Registrar) {
      val channel = MethodChannel(registrar.messenger(), "push_plugin")
      channel.setMethodCallHandler(PushPlugin(registrar, channel))
    }
  }

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "push_plugin")
    channel.setMethodCallHandler(PushPlugin(flutterPluginBinding, channel))
    applicationContext = flutterPluginBinding.applicationContext
    val tokenFunction = TokenFunction()
    tokenFunction.init(applicationContext!!)
  }

  override fun onDetachedFromEngine(binding: FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "getToken") {
      val tokenFunction = TokenFunction()
      val appId = call.argument<String?>("appId")
      tokenFunction.getToken(result,appId)
    } else {
      result.notImplemented()
    }
  }

  fun toFlutterMethod(methodName: String, para: Map<String, Any?>?) {
    MainHandler.getInstance().post { channel.invokeMethod(methodName, para) }
  }

}
