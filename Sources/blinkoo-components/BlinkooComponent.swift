//
//  BlinkooComponent.swift
//  blinkoo_sdk
//
//  Created by Davide Quadrelli on 09/01/25.
//

import Flutter
import FlutterPluginRegistrant

public class BlinkooComponent {
    var tag: String
    var engineId: String
    var route: String
    var originDomain: String
    var flutterEngine: FlutterEngine
    public var viewController: BlinkooViewController
    
    init(tag: String, engineId: String, route: String, originDomain: String){
        // store properties
        self.tag = tag
        self.engineId = engineId
        self.route = route
        self.originDomain = originDomain
        
        // init engine
        flutterEngine = FlutterEngine(name: engineId)
        // Runs the default Dart entrypoint with a default Flutter route.
        flutterEngine.run(withEntrypoint: BlinkooConstants.FLUTTER_ENTRY_POINT)
        // Connects plugins with iOS platform code to this app.
        GeneratedPluginRegistrant.register(with: self.flutterEngine)
        // Create the FlutterViewController.
        viewController = BlinkooViewController(
            engine: flutterEngine,
            nibName: nil,
            bundle: nil
        )
    }
    
    public func close() {
        self.flutterEngine.viewController = nil
        self.viewController = BlinkooViewController(
            engine: flutterEngine,
            nibName: nil,
            bundle: nil
        )
    }
    
    func _showFullScreen(rootViewController: UIViewController, animated: Bool) async throws {
        try _checkStartConditions()
        await viewController.pushRoute(route)
        await rootViewController.present(viewController, animated: animated)
    }
    
    func _show() async throws {
        try _checkStartConditions()
        await viewController.pushRoute(route)
    }
    
    func _checkStartConditions() throws {
        if (originDomain.isEmpty) {
            throw BlinkooMissingOriginException(className: String(describing: type(of: self)))
        }
    }
}

