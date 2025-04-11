import Flutter

class BlinkooAppConfigurationChannel: BlinkooBaseChannel {

    init(flutterEngine: FlutterEngine) {
        super.init(flutterEngine: flutterEngine, channelName: "feed_app_configuration_channel")
    }

    override func initChannel() -> BlinkooAppConfigurationChannel {
        let _ = super.initChannel()
        return self
    }

    func setOrigin(origin: String) async -> Bool {
        return await super.callMethod(methodName: "setOrigin", args: origin)
    }
}

