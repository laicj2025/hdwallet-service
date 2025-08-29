import Flutter
import UIKit

public class SwiftHdwalletServicePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "hdwallet_service", binaryMessenger: registrar.messenger())
    let instance = SwiftHdwalletServicePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }

  public func enforceBundling() {
    call_tcx_api_abm(nil)
  }
}
