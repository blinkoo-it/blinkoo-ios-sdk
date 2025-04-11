//
//  BlinkooFeedArgs.swift
//  blinkoo_sdk
//
//  Created by Davide Quadrelli on 09/01/25.
//

import Foundation

public class BlinkooSingleVideoArgs: BlinkooBaseModel {
    /// The name of the feed (shown at the top of the screen)
    var title: String?
    
    /// The postId of the post that you want to see
    var postId: String
    
    public init(title: String? = nil, postId: String) {
        self.title = title
        self.postId = postId
    }

}
