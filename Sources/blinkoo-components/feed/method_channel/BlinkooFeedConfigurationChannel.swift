import Flutter

class BlinkooFeedConfigurationChannel: BlinkooBaseChannel {

    override init(flutterEngine: FlutterEngine, channelName: String = "feed_configuration_channel") {
        super.init(flutterEngine: flutterEngine, channelName: channelName)
    }

    override func initChannel() -> BlinkooFeedConfigurationChannel {
        let _ = super.initChannel()
        return self
    }

    func setLocale(currentLocale: String) async -> Bool {
        return await super.callMethod(methodName: "setLocale", args: currentLocale)
    }
    
    func setBackEnabled(_ isBackEnabled: Bool) async -> Bool {
        return await super.callMethod(methodName: "setBackEnabled", args: NSNumber(value: isBackEnabled))
    }
    
    func setCreatorEnabled(_ isCreatorEnabled: Bool) async -> Bool {
        return await super.callMethod(methodName: "setCreatorEnabled", args: NSNumber(value: isCreatorEnabled))
    }
}

