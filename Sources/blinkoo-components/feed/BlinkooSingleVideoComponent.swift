import Foundation
import Flutter
import FlutterPluginRegistrant

public class BlinkooSingleVideoComponent: BlinkooComponent {
    
    lazy var feedNavigationChannel: BlinkooFeedNavigationChannel = {
        return BlinkooFeedNavigationChannel(flutterEngine: flutterEngine).initChannel()
    }()
    lazy var singleVideoConfigurationChannel: BlinkooSinglePostConfigurationChannel = {
        return BlinkooSinglePostConfigurationChannel(flutterEngine: flutterEngine).initChannel()
    }()
    lazy var feedAppConfigurationChannel: BlinkooAppConfigurationChannel = {
        return BlinkooAppConfigurationChannel(flutterEngine: flutterEngine).initChannel()
    }()
//    lazy var feedAssetChannel: FeedAssetChannel = {
//        return FeedAssetChannel(flutterEngine: flutterEngine).initChannel()
//    }()
//    lazy var feedInsightChannel: FeedInsightChannel = {
//        return FeedInsightChannel(flutterEngine: flutterEngine).initChannel()
//    }()
//    lazy var feedLabelChannel: FeedLabelChannel = {
//        return FeedLabelChannel(flutterEngine: flutterEngine).initChannel()
//    }()
//    lazy var feedThemeChannel: FeedThemeChannel = {
//        return FeedThemeChannel(flutterEngine: flutterEngine).initChannel()
//    }()
    
    var firstNavigation = true
    
    public init(originDomain: String) {
        super.init(tag: "blinkoo_single_video_component", engineId: "blinkoo_singe_video_engine", route: "/singleVideoSdkScreen", originDomain: originDomain)
    }
    
    public func showFullScreen(rootViewController: UIViewController, animated: Bool, postArgs: BlinkooSingleVideoArgs, config: BlinkooFeedConfiguration) async throws {
        try await setupFeed(postArgs: postArgs, isBackButtonEnabled: true, config: config)
        try await super._showFullScreen(rootViewController: rootViewController, animated: animated)
    }
    
    public func show(postArgs: BlinkooSingleVideoArgs, config: BlinkooFeedConfiguration) async throws {
        try await setupFeed(postArgs: postArgs, isBackButtonEnabled: false, config: config)
        try await super._show()
    }
    
    private func setupFeed(postArgs: BlinkooSingleVideoArgs, isBackButtonEnabled: Bool, config: BlinkooFeedConfiguration) async throws {
        let feedSet = await feedNavigationChannel.setSingleVideoArgs(postArgs: postArgs.toMap())
        let backButtonSet = await singleVideoConfigurationChannel.setBackEnabled(isBackButtonEnabled)
        let originSet = await feedAppConfigurationChannel.setOrigin(origin: originDomain)
        let creatorSet = await singleVideoConfigurationChannel.setCreatorEnabled(config.isCreatorEnabled)
        
        // if something went wrong, throw exception
        if (!feedSet || !backButtonSet || !originSet || !creatorSet) {
            throw BlinkooComponentConfigurationException(className: String(describing: self), results: [feedSet, backButtonSet, originSet, creatorSet])
        }
    }
    
    
}
