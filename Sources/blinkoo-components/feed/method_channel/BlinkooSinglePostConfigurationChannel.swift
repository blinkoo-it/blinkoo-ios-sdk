//
//  BlinkooSinglePostConfigurationChannel.swift
//  blinkoo_sdk
//
//  Created by Davide Quadrelli on 07/04/2025.
//

import Flutter

class BlinkooSinglePostConfigurationChannel: BlinkooFeedConfigurationChannel {
    init(flutterEngine: FlutterEngine) {
        super.init(flutterEngine: flutterEngine, channelName: "single_post_configuration_channel")
    }
    
    override func initChannel() -> BlinkooSinglePostConfigurationChannel {
        let _ = super.initChannel()
        return self
    }
}
