import Foundation
import Flutter
import FlutterPluginRegistrant

public class BlinkooFeedComponent: BlinkooComponent {
    
    lazy var feedNavigationChannel: BlinkooFeedNavigationChannel = {
        return BlinkooFeedNavigationChannel(flutterEngine: flutterEngine).initChannel()
    }()
    lazy var feedConfigurationChannel: BlinkooFeedConfigurationChannel = {
        return BlinkooFeedConfigurationChannel(flutterEngine: flutterEngine).initChannel()
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
        super.init(tag: "blinkoo_feed_component", engineId: "blinkoo_feed_engine", route: "/feedSdkScreen", originDomain: originDomain)
    }
    
    public func showFullScreen(rootViewController: UIViewController, animated: Bool, feedArgs: BlinkooFeedArgs, config: BlinkooFeedConfiguration) async throws {
        try await setupFeed(feedArgs: feedArgs, isBackButtonEnabled: true, config: config)
        try await super._showFullScreen(rootViewController: rootViewController, animated: animated)
    }
    
    public func show(feedArgs: BlinkooFeedArgs, config: BlinkooFeedConfiguration) async throws {
        try await setupFeed(feedArgs: feedArgs, isBackButtonEnabled: false, config: config)
        try await super._show()
    }
    
    private func setupFeed(feedArgs: BlinkooFeedArgs, isBackButtonEnabled: Bool, config: BlinkooFeedConfiguration) async throws {
        let feedSet = await feedNavigationChannel.setFeedArgs(feedArgs: feedArgs.toMap())
        let backButtonSet = await feedConfigurationChannel.setBackEnabled(isBackButtonEnabled)
        let originSet = await feedAppConfigurationChannel.setOrigin(origin: originDomain)
        let creatorSet = await feedConfigurationChannel.setCreatorEnabled(config.isCreatorEnabled)
        
        // if something went wrong, throw exception
        if (!feedSet || !backButtonSet || !originSet || !creatorSet) {
            throw BlinkooComponentConfigurationException(className: String(describing: self), results: [feedSet, backButtonSet, originSet, creatorSet])
        }
    }
    
    
}
