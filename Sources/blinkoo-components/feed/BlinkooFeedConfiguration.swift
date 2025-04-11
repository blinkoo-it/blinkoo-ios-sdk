//
//  BlinkooFeedConfiguration.swift
//  blinkoo_sdk
//
//  Created by Davide Quadrelli on 07/04/2025.
//

public class BlinkooFeedConfiguration {
    /// Flag to show/hide the creator chip in the feed
    var isCreatorEnabled: Bool
    
    public init(isCreatorEnabled: Bool = false) {
        self.isCreatorEnabled = isCreatorEnabled
    }
}
