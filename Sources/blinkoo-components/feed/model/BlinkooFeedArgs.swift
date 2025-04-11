//
//  BlinkooFeedArgs.swift
//  blinkoo_sdk
//
//  Created by Davide Quadrelli on 09/01/25.
//

import Foundation

public class BlinkooFeedArgs: BlinkooBaseModel {
    /// The name of the feed (shown at the top of the screen)
    var title: String?
    
    /// The initial filter values used to initialize a feed. When filters is passed, the feed is initialized as a
    /// `Neverending Feed`, so at the end of the filtered playlist, other random videos will be loaded.
    /// To pass more than one filter, use a comma-separated string.
    ///
    /// Example: filter1,filter2
    var filters: String?
    
    /// The code of an editorial playlist. When playlistFilter is passed, the feed is initialized as a
    /// `Loop Feed` and it will show only the videos contained in that playlist. When the end of the playlist is reached,
    /// the feed will start to show the same videos from scratch.
    var playlistFilter: String?
    
    /// Feed text size's scaler (commented out in the original Kotlin code)
    // var textScaler: Double?
    
    /// Custom initializer with default values
    public init(title: String? = nil, filters: String? = nil, playlistFilter: String? = nil) {
        self.title = title
        self.filters = filters
        self.playlistFilter = playlistFilter
    }
}
