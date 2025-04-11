// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "blinkoo-components",
    platforms: [
        .iOS(.v14), // Specify the minimum iOS version
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "blinkoo-components",
            targets: ["blinkoo-components"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "blinkoo-components",
            dependencies: [
                "App",
                "Flutter",
                "FlutterPluginRegistrant",
                "package_info_plus",
                "path_provider_foundation",
                "share_plus",
                "shared_preferences_foundation",
                "video_player_avfoundation"
            ]
        ),
        .binaryTarget(
            name: "App",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.1/App.xcframework.zip",
            checksum: "65e4509c5aab095f8a3251dcb2b941c4a39b16de4069f26ad064f6124a0e99f8"
        ),
.binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.1/shared_preferences_foundation.xcframework.zip",
            checksum: "1398d72b41c16fe2017db17d7d06b7a119104bbd904c6d38bb40191652e3d8c3"
        ),
.binaryTarget(
            name: "package_info_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.1/package_info_plus.xcframework.zip",
            checksum: "c1fdc2e3bc08133728d0862b64ebf78a98ae859f910d9eb7da07550fc132fc6e"
        ),
.binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.1/FlutterPluginRegistrant.xcframework.zip",
            checksum: "1a72a5a1b63b24b5fbb55dc4a59130901baffc6f7bb6c991c02823305810a7ba"
        ),
.binaryTarget(
            name: "video_player_avfoundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.1/video_player_avfoundation.xcframework.zip",
            checksum: "55a8c014e85cc5b6709cbbdc6b73528d570919d83b697904fa057372640416dc"
        ),
.binaryTarget(
            name: "path_provider_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.1/path_provider_foundation.xcframework.zip",
            checksum: "90b4bfcb9a96e3f68bfe70af79d97d33e9255f4513fa530a10c60f7ad75018f1"
        ),
.binaryTarget(
            name: "share_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.1/share_plus.xcframework.zip",
            checksum: "2aaf7210fc03c8d1fa74ce6c383edc971b31da7ef9545b6a30db543c1d123251"
        ),
.binaryTarget(
            name: "Flutter",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.1/Flutter.xcframework.zip",
            checksum: "035cfe186c8784ab34ded439b781f482beb7a72f97547c1e10f809018f56b1ac"
        )
        ]
)
