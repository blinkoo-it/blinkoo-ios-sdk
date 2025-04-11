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
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.7/App.xcframework.zip",
            checksum: "ba3a9c7d50cd1a3742409e2f6f4e788db6db892c8dbbe1d9b6927b44a97d91aa"
        ),
.binaryTarget(
            name: "iphonesimulator",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.7/iphonesimulator.zip",
            checksum: "10a8cf9c3ffb37318cc3baa4176947c3dbe68ca274c54937447454ca71833000"
        ),
.binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.7/shared_preferences_foundation.xcframework.zip",
            checksum: "c89c9b068bb38b2b3ef788ad913bf061d2a437ce3cd67adfff11bb67dbef99a6"
        ),
.binaryTarget(
            name: "package_info_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.7/package_info_plus.xcframework.zip",
            checksum: "5b50385d3593bbbfa9ce739d57bd01d68259bd5379817aa25ca2149d7ff5f60a"
        ),
.binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.7/FlutterPluginRegistrant.xcframework.zip",
            checksum: "e078f4117fef4013d559b1120b316607b5cbb4dfea5c52ac15c2defd75a7a342"
        ),
.binaryTarget(
            name: "video_player_avfoundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.7/video_player_avfoundation.xcframework.zip",
            checksum: "b958d9107042d33c76e5a3db78754d7be583d054322c7f5c7f6d6226f0695746"
        ),
.binaryTarget(
            name: "iphoneos",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.7/iphoneos.zip",
            checksum: "7b2f4132a2ab8463d500f8501c43b5d337182ccb8ef304fe6b358d4e65cef193"
        ),
.binaryTarget(
            name: "path_provider_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.7/path_provider_foundation.xcframework.zip",
            checksum: "10e9861a64bad2cccc66cab7a9a57507127f5e27f870842b6d14e8ed96dc4b05"
        ),
.binaryTarget(
            name: "share_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.7/share_plus.xcframework.zip",
            checksum: "d6857f8a661707b61297b1980e7cde8f68f01313bff49570b338dc6b11572b91"
        ),
.binaryTarget(
            name: "Flutter",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.7/Flutter.xcframework.zip",
            checksum: "01f6c1f32aad12d39354460475f28b0129a7f240226406d8b56443503d6fc0b9"
        )
        ]
)
