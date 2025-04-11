
//
//  FeedException.swift
//  blinkoo_sdk
//
//  Created by Davide Quadrelli on 14/05/24.
//

import Foundation
struct BlinkooComponentConfigurationException: Error {
    var message: String
    
    init(className: String, results: [Bool]) {
        self.message = "Error configuring \(className) component: \(results)"
    }
}
