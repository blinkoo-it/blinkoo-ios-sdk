import Flutter
import os
import Combine

class BlinkooBaseChannel {
    let flutterEngine: FlutterEngine
    let channelName: String
    private var channel: FlutterMethodChannel!
    
    init(flutterEngine: FlutterEngine, channelName: String) {
        self.flutterEngine = flutterEngine
        self.channelName = channelName
    }
    
    func initChannel() -> BlinkooBaseChannel {
        channel = FlutterMethodChannel(name: channelName, binaryMessenger: flutterEngine.binaryMessenger)
        return self
    }
    
    @MainActor
    func callMethod(methodName: String, args: Any) async -> Bool {
        return await withCheckedContinuation {continuation in
            self.channel.invokeMethod(methodName, arguments: args)
            { (result: Any?) in
                if let error = result as? FlutterError {
                    let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "blinkoo_sdk")
                    let errorMessage = error.message ?? ""
                    let errorCode = error.code
                    logger.error("\(self.channelName): \(errorCode) - \(errorMessage)")
                    continuation.resume(returning: false)
                } else {
                    continuation.resume(returning: true)
                }
            }
        }
    }
    
    func callHandler(handler: @escaping FlutterMethodCallHandler) {
        channel.setMethodCallHandler(handler)
    }
}
