import Flutter

class BlinkooFeedNavigationChannel: BlinkooBaseChannel {
    
    init(flutterEngine: FlutterEngine) {
        super.init(flutterEngine: flutterEngine, channelName: "feed_navigation_channel")
    }
    
    override func initChannel() -> BlinkooFeedNavigationChannel {
        let _ = super.initChannel()
        return self
    }
    
    func setFeedArgs(feedArgs: [String: Any?]) async -> Bool {
        return await super.callMethod(methodName: "setFeedArgs", args: feedArgs)
    }
    
    func setSingleVideoArgs(postArgs: [String: Any?]) async -> Bool {
        return await super.callMethod(methodName: "setPostArgs", args: postArgs)
    }
}
