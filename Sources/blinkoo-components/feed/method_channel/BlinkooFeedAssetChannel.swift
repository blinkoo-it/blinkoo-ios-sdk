import Flutter

class BlinkooFeedAssetChannel: BlinkooBaseChannel {
    init(flutterEngine: FlutterEngine) {
        super.init(flutterEngine: flutterEngine,channelName: "feed_asset_channel")
    }

    override func initChannel() -> BlinkooFeedAssetChannel {
        let _ = super.initChannel()
        return self
    }

//    func setCompanyLogo(companyLogo: String) async -> Bool {
//        return await super.callMethod(methodName: "setCompanyLogo", args: companyLogo)
//    }
//
//    func setDefaultLoadingPlaceholder(loadingPlaceholder: String) async -> Bool{
//        return await super.callMethod(methodName: "setDefaultLoadingPlaceholder", args: loadingPlaceholder)
//    }
}
