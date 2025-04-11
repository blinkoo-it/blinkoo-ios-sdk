import Flutter

class BlinkooFeedLabelChannel: BlinkooBaseChannel {
    
    init(flutterEngine: FlutterEngine) {
        super.init(flutterEngine: flutterEngine, channelName: "feed_label_channel")
    }

    override func initChannel() -> BlinkooFeedLabelChannel {
        let _ = super.initChannel()
        return self
    }

//    func setLabels(labels: [String: Any]) async -> Bool {
//        return await super.callMethod(methodName: "setLabels", args: labels)
//    }
}
