//
//  FeedException.swift
//  blinkoo_sdk
//
//  Created by Davide Quadrelli on 14/05/24.
//

import Foundation
struct BlinkooMissingOriginException: Error {
    let className: String
    let message: String
    
    init(className: String) {
        self.className = className
        self.message = "Missing origin for component \(className)"
    }
}
