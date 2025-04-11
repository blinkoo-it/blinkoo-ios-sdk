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
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.6/App.xcframework.zip",
            checksum: "46b843de62017d8408925fe2ee243bec272437d51cc9ffab7b12786dbc362fce"
        ),
.binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.6/shared_preferences_foundation.xcframework.zip",
            checksum: "d79fa988acc47eec0b61e90529cbe13523b14b7c7bad46c6bb0c38c7dcbe16ec"
        ),
.binaryTarget(
            name: "package_info_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.6/package_info_plus.xcframework.zip",
            checksum: "416b618bc8674b02bf13150d143290f20afbbd50747e0f2efdbc28a101f9c85c"
        ),
.binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.6/FlutterPluginRegistrant.xcframework.zip",
            checksum: "02f80d0e1e65a235d5d590611cc7c0d8972b52ae4b7e675092f733814ccbb8d5"
        ),
.binaryTarget(
            name: "video_player_avfoundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.6/video_player_avfoundation.xcframework.zip",
            checksum: "8c7090bac9847434e169ac67c5ca6b0f664bf0806f7aadc6b6be62712abebd56"
        ),
.binaryTarget(
            name: "path_provider_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.6/path_provider_foundation.xcframework.zip",
            checksum: "c2f1d8a7fb37dd7cd99a0d43abc86e2d3ca4741c6a62fb2e9f32622799af3272"
        ),
.binaryTarget(
            name: "share_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.6/share_plus.xcframework.zip",
            checksum: "c177762eee4c11b693e0f44f55ade843906c60e50006947c2b1eabe82fa4f630"
        ),
.binaryTarget(
            name: "Flutter",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.6/Flutter.xcframework.zip",
            checksum: "9ccb645b503f11db4736d0ac78e8dbd6f86d5045453d3de4d7d993b7641b7ce3"
        )
        ]
)
