import Foundation
import Flutter

extension FlutterEngine {
    
    func pushRoute(_ route: String) async {
        print("Sending message to push route '\(route)'")
        return await withCheckedContinuation {continuation in
            self.navigationChannel.invokeMethod("pushRoute", arguments: route) {(result) in
//                if (result is FlutterError) {
//                    continuation.resume(returning: false)
//                } else {
//                    continuation.resume(returning: true)
//                }
                continuation.resume()
            }
        }
//        self.navigationChannel.invokeMethod("pushRoute", arguments: route)
    }
    
    func popRoute() async -> Bool {
        return await withCheckedContinuation {continuation in
            self.navigationChannel.invokeMethod("popRoute", arguments: nil) {(result) in
                if (result is FlutterError) {
                    continuation.resume(returning: false)
                } else {
                    continuation.resume(returning: true)
                }
            }
        }
    }
}
