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
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.8/App.xcframework.zip",
            checksum: "e584518221f336f7bd56259e73f803c97e2ef8881cadd2e571d8cafdc485ab9b"
        ),
.binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.8/shared_preferences_foundation.xcframework.zip",
            checksum: "ac068c3c2f9877df9b74f6ec9a061d661d680301d542e372ba7b5cf60340d396"
        ),
.binaryTarget(
            name: "package_info_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.8/package_info_plus.xcframework.zip",
            checksum: "5ca6eb9d899718c31e7c713ef83c4eb6977e8a9c6a13e28a8c1df7cec6d981f8"
        ),
.binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.8/FlutterPluginRegistrant.xcframework.zip",
            checksum: "42453cba964d741c8fe627357b6ba969e9bdbff276c415be50d56e985a0e55f8"
        ),
.binaryTarget(
            name: "video_player_avfoundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.8/video_player_avfoundation.xcframework.zip",
            checksum: "391417641d8d1dc9ff49891a3cfef64fccb4fbedf1f5335d2dffb12bcc2940c6"
        ),
.binaryTarget(
            name: "path_provider_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.8/path_provider_foundation.xcframework.zip",
            checksum: "8521fda7528d89f0596ef85b0954117d8ceecc9bc525064eb04a504042934dae"
        ),
.binaryTarget(
            name: "share_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.8/share_plus.xcframework.zip",
            checksum: "e4ac6034bfb4b9ea0e2b78fa9a74de490f4d02cf9391223e8b46eefb30221b38"
        ),
.binaryTarget(
            name: "Flutter",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.8/Flutter.xcframework.zip",
            checksum: "a776ba4c6ead608048fcbd792a9643ac7ae7cf8b12dc005468868308347fc2bb"
        )
        ]
)
