public class BlinkooFeedInsight {
    func sendFeedBackIconTapped() {
        fatalError("Method sendFeedBackIconTapped() must be overridden")
    }
    
    func sendFeedSearchIconTapped() {
        fatalError("Method sendFeedSearchIconTapped() must be overridden")
    }
    
    func sendEditPostTapped(postId: String) {
        fatalError("Method sendEditPostTapped(postId:) must be overridden")
    }
    
    func sendGoToPostDetailTapped(postId: String, bookable: Bool, playlistId: String?) {
        fatalError("Method sendGoToPostDetailTapped(postId:bookable:playlistId:) must be overridden")
    }
    
    func sendCreatorFilterSelected(postId: String, playlistId: String?, profileSlug: String) {
        fatalError("Method sendCreatorFilterSelected(postId:playlistId:profileSlug:) must be overridden")
    }
    
    func sendCreatorFilterDeselected(postId: String, playlistId: String?, profileSlug: String) {
        fatalError("Method sendCreatorFilterDeselected(postId:playlistId:profileSlug:) must be overridden")
    }
    
    func sendFilterDeselected(categoryId: String, name: String, filterValue: String, profileSlug: String) {
        fatalError("Method sendFilterDeselected(categoryId:name:filterValue:profileSlug:) must be overridden")
    }
    
    func sendFilterSelected(categoryId: String, name: String, filterValue: String, profileSlug: String) {
        fatalError("Method sendFilterSelected(categoryId:name:filterValue:profileSlug:) must be overridden")
    }
    
    func sendBookmarkAdded(postId: String, playlistId: String?) {
        fatalError("Method sendBookmarkAdded(postId:playlistId:) must be overridden")
    }
    
    func sendBookmarkRemoved(postId: String, playlistId: String?) {
        fatalError("Method sendBookmarkRemoved(postId:playlistId:) must be overridden")
    }
    
    func sendPostShared(postId: String, playlistId: String?) {
        fatalError("Method sendPostShared(postId:playlistId:) must be overridden")
    }
    
    func sendPostLiked(postId: String, playlistId: String?) {
        fatalError("Method sendPostLiked(postId:playlistId:) must be overridden")
    }
    
    func sendPostUnliked(postId: String, playlistId: String?) {
        fatalError("Method sendPostUnliked(postId:playlistId:) must be overridden")
    }
    
    func sendCommentTapped(postId: String) {
        fatalError("Method sendCommentTapped(postId:) must be overridden")
    }
    
    func send3DotsTapped(postId: String, playlistId: String?) {
        fatalError("Method send3DotsTapped(postId:playlistId:) must be overridden")
    }
    
    func sendCreatorIconTapped(postId: String, profileSlug: String, playlistId: String?) {
        fatalError("Method sendCreatorIconTapped(postId:profileSlug:playlistId:) must be overridden")
    }
    
    func sendManualPlayedVideo(postId: String, playlistId: String?) {
        fatalError("Method sendManualPlayedVideo(postId:playlistId:) must be overridden")
    }
    
    func sendManualPausedVideo(postId: String, playlistId: String?) {
        fatalError("Method sendManualPausedVideo(postId:playlistId:) must be overridden")
    }
    
    func sendAutomaticallyPlayedVideo(postId: String, playlistId: String?) {
        fatalError("Method sendAutomaticallyPlayedVideo(postId:playlistId:) must be overridden")
    }
    
    func sendAutomaticallyPausedVideo(postId: String, playlistId: String?) {
        fatalError("Method sendAutomaticallyPausedVideo(postId:playlistId:) must be overridden")
    }
    
    func sendAffiliationLinkTapped(provider: String, postId: String, url: String) {
        fatalError("Method sendAffiliationLinkTapped(provider:postId:url:) must be overridden")
    }
    
    func sendMapTapped(postId: String, title: String?, playlistId: String?) {
        fatalError("Method sendMapTapped(postId:title:playlistId:) must be overridden")
    }
    
    func sendBookExperienceTapped(postId: String, bookingLink: String, playlistId: String?) {
        fatalError("Method sendBookExperienceTapped(postId:bookingLink:playlistId:) must be overridden")
    }
    
    func sendScrollToNextItem(currentPostId: String, nextPostId: String?) {
        fatalError("Method sendScrollToNextItem(currentPostId:nextPostId:) must be overridden")
    }
    
    func sendScrollToPreviousItem(currentPostId: String, previousPostId: String) {
        fatalError("Method sendScrollToPreviousItem(currentPostId:previousPostId:) must be overridden")
    }
}
