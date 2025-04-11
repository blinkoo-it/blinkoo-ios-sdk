import Flutter

class BlinkooFeedThemeChannel: BlinkooBaseChannel {
    
    init(flutterEngine: FlutterEngine) {
        super.init(flutterEngine: flutterEngine, channelName: "feed_theme_channel")
    }
    
    override func initChannel() -> BlinkooFeedThemeChannel {
        let _ = super.initChannel()
        return self
    }
    
//    func setLightColorScheme(colorSchemes: [String: Any]) async -> Bool {
//        return await super.callMethod(methodName: "setLightColorScheme", args: colorSchemes)
//    }
//    
//    func setDarkColorScheme(colorSchemes: [String: Any]) async -> Bool {
//        return await super.callMethod(methodName: "setDarkColorScheme", args: colorSchemes)
//    }
}
