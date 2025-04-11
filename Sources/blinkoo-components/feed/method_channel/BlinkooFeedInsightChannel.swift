import Flutter

class BlinkooFeedInsightChannel: BlinkooBaseChannel {
    private var insightHandler: BlinkooFeedInsight?
    
    init(flutterEngine: FlutterEngine) {
        super.init(flutterEngine: flutterEngine, channelName: "feed_insight_channel")
    }
    
    override func initChannel() -> BlinkooFeedInsightChannel {
        let _ = super.initChannel()
        callHandler { [weak self] (call, result) in
            self?.handleInsights(call: call, result: result)
        }
        return self
    }
    
    func setInsightHandler(insightHandler: BlinkooFeedInsight) {
        self.insightHandler = insightHandler
    }
    
    private func handleInsights(call: FlutterMethodCall, result: FlutterResult) {
        guard let insightMethodString = Optional(call.method),
              let insightMethod = BlinkooFeedInsightMethods(rawValue: insightMethodString) else {
            result(FlutterMethodNotImplemented)
            return
        }
        
        switch insightMethod {
        case .sendFeedBackIconTapped:
            insightHandler?.sendFeedBackIconTapped()
            
        case .sendFeedSearchIconTapped:
            insightHandler?.sendFeedSearchIconTapped()
            
        case .sendEditPostTapped:
            if let listOfArgs = call.arguments as? [String], !listOfArgs.isEmpty {
                insightHandler?.sendEditPostTapped(postId: listOfArgs[0])
            }
            
        case .sendGoToPostDetailTapped:
            if let listOfArgs = call.arguments as? [Any], listOfArgs.count >= 2,
               let postId = listOfArgs[0] as? String,
               let bookable = listOfArgs[1] as? Bool {
                let playlistId = listOfArgs.count > 2 ? listOfArgs[2] as? String : nil
                insightHandler?.sendGoToPostDetailTapped(postId: postId, bookable: bookable, playlistId: playlistId)
            }
            
        case .sendCreatorFilterSelected, .sendCreatorFilterDeselected:
            if let listOfArgs = call.arguments as? [Any], listOfArgs.count >= 3,
               let postId = listOfArgs[0] as? String,
               let playlistId = listOfArgs[1] as? String?,
               let profileSlug = listOfArgs[2] as? String {
                if insightMethod == .sendCreatorFilterSelected {
                    insightHandler?.sendCreatorFilterSelected(postId: postId, playlistId: playlistId, profileSlug: profileSlug)
                } else {
                    insightHandler?.sendCreatorFilterDeselected(postId: postId, playlistId: playlistId, profileSlug: profileSlug)
                }
            }
            
        case .sendFilterDeselected, .sendFilterSelected:
            if let listOfArgs = call.arguments as? [String], listOfArgs.count >= 4 {
                let categoryId = listOfArgs[0]
                let name = listOfArgs[1]
                let filterValue = listOfArgs[2]
                let profileSlug = listOfArgs[3]
                if insightMethod == .sendFilterDeselected {
                    insightHandler?.sendFilterDeselected(categoryId: categoryId, name: name, filterValue: filterValue, profileSlug: profileSlug)
                } else {
                    insightHandler?.sendFilterSelected(categoryId: categoryId, name: name, filterValue: filterValue, profileSlug: profileSlug)
                }
            }
            
        case .sendBookmarkAdded, .sendBookmarkRemoved, .sendPostShared, .sendPostLiked, .sendPostUnliked:
            if let listOfArgs = call.arguments as? [Any], listOfArgs.count >= 2,
               let postId = listOfArgs[0] as? String,
               let playlistId = listOfArgs[1] as? String? {
                switch insightMethod {
                case .sendBookmarkAdded:
                    insightHandler?.sendBookmarkAdded(postId: postId, playlistId: playlistId)
                case .sendBookmarkRemoved:
                    insightHandler?.sendBookmarkRemoved(postId: postId, playlistId: playlistId)
                case .sendPostShared:
                    insightHandler?.sendPostShared(postId: postId, playlistId: playlistId)
                case .sendPostLiked:
                    insightHandler?.sendPostLiked(postId: postId, playlistId: playlistId)
                case .sendPostUnliked:
                    insightHandler?.sendPostUnliked(postId: postId, playlistId: playlistId)
                default:
                    break
                }
            }
            
        case .sendCommentTapped:
            if let listOfArgs = call.arguments as? [String], !listOfArgs.isEmpty {
                insightHandler?.sendCommentTapped(postId: listOfArgs[0])
            }
            
        case .send3DotsTapped:
            if let listOfArgs = call.arguments as? [Any], listOfArgs.count >= 2,
               let postId = listOfArgs[0] as? String,
               let playlistId = listOfArgs[1] as? String? {
                insightHandler?.send3DotsTapped(postId: postId, playlistId: playlistId)
            }
            
        case .sendCreatorIconTapped:
            if let listOfArgs = call.arguments as? [Any], listOfArgs.count >= 3,
               let postId = listOfArgs[0] as? String,
               let profileSlug = listOfArgs[1] as? String,
               let playlistId = listOfArgs[2] as? String? {
                insightHandler?.sendCreatorIconTapped(postId: postId, profileSlug: profileSlug, playlistId: playlistId)
            }
            
        case .sendManualPlayedVideo, .sendManualPausedVideo, .sendAutomaticallyPlayedVideo, .sendAutomaticallyPausedVideo:
            if let listOfArgs = call.arguments as? [Any], !listOfArgs.isEmpty,
               let postId = listOfArgs[0] as? String,
               let playlistId = listOfArgs[1] as? String? {
                switch insightMethod {
                case .sendManualPlayedVideo:
                    insightHandler?.sendManualPlayedVideo(postId: postId, playlistId: playlistId)
                case .sendManualPausedVideo:
                    insightHandler?.sendManualPausedVideo(postId: postId, playlistId: playlistId)
                case .sendAutomaticallyPlayedVideo:
                    insightHandler?.sendAutomaticallyPlayedVideo(postId: postId, playlistId: playlistId)
                case .sendAutomaticallyPausedVideo:
                    insightHandler?.sendAutomaticallyPausedVideo(postId: postId, playlistId: playlistId)
                default:
                    break
                }
            }
            
        case .sendAffiliationLinkTapped:
            if let listOfArgs = call.arguments as? [String], listOfArgs.count >= 3 {
                insightHandler?.sendAffiliationLinkTapped(provider: listOfArgs[0], postId: listOfArgs[1], url: listOfArgs[2])
            }
            
        case .sendMapTapped:
            if let listOfArgs = call.arguments as? [Any], listOfArgs.count >= 2,
               let postId = listOfArgs[0] as? String,
               let title = listOfArgs[1] as? String?,
               let playlistId = listOfArgs[2] as? String? {
                insightHandler?.sendMapTapped(postId: postId, title: title, playlistId: playlistId)
            }
            
        case .sendBookExperienceTapped:
            if let listOfArgs = call.arguments as? [Any], listOfArgs.count >= 2,
               let postId = listOfArgs[0] as? String,
               let bookingLink = listOfArgs[1] as? String,
               let playlistId = listOfArgs[2] as? String? {
                insightHandler?.sendBookExperienceTapped(postId: postId, bookingLink: bookingLink, playlistId: playlistId)
            }
            
        case .sendScrollToNextItem, .sendScrollToPreviousItem:
            if let listOfArgs = call.arguments as? [Any], listOfArgs.count >= 1,
               let currentPostId = listOfArgs[0] as? String {
                switch insightMethod {
                case .sendScrollToNextItem:
                    let nextPostId = listOfArgs.count > 1 ? listOfArgs[1] as? String : nil
                    insightHandler?.sendScrollToNextItem(currentPostId: currentPostId, nextPostId: nextPostId)
                case .sendScrollToPreviousItem:
                    let previousPostId = listOfArgs[1] as? String ?? ""
                    insightHandler?.sendScrollToPreviousItem(currentPostId: currentPostId, previousPostId: previousPostId)
                default:
                    break
                }
            }
        }
        
        result(nil)
    }
}
