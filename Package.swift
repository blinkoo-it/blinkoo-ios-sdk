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
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.4/App.xcframework.zip",
            checksum: "32624b47b721b3af5326eb11c25e6d630eb99ef668c1527cdd6dc1a3a0dd6b16"
        ),
.binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.4/shared_preferences_foundation.xcframework.zip",
            checksum: "80fe4071a0ce17f9989df1611a10768ee458c747ec5f6f94bf4faba4a3cb26b3"
        ),
.binaryTarget(
            name: "package_info_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.4/package_info_plus.xcframework.zip",
            checksum: "c4a7ee38fea38c04dda97764dbc1f476a33566a2069da9b7ab2122e7535476fe"
        ),
.binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.4/FlutterPluginRegistrant.xcframework.zip",
            checksum: "27423227a820f8b7e95a071e465e5cd2d700d6225c4005ea89144fd0f144145a"
        ),
.binaryTarget(
            name: "video_player_avfoundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.4/video_player_avfoundation.xcframework.zip",
            checksum: "9c9f684837726b72097b68bff87d693d0df36970a2e79178ab4c4d1251782d0f"
        ),
.binaryTarget(
            name: "path_provider_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.4/path_provider_foundation.xcframework.zip",
            checksum: "af87deb8389f93cf4df2bf990bb51d5b69b662f6783c47ccee62fb3764b34075"
        ),
.binaryTarget(
            name: "share_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.4/share_plus.xcframework.zip",
            checksum: "921b50409f618e9093415b65be127d4b50438a8978dc5810bf35cc668b332d6a"
        ),
.binaryTarget(
            name: "Flutter",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.4/Flutter.xcframework.zip",
            checksum: "13bf76c29fb5556e8c85755c934ea278aba6bda1a10aecb5e6fbe64a428d36a9"
        )
        ]
)
