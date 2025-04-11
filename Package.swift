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
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.2/App.xcframework.zip",
            checksum: "10da21eacafa7f2a18ef2ef04720925db5591593ec70f806fb24ae2c62221e7e"
        ),
.binaryTarget(
            name: "iphonesimulator",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.2/iphonesimulator.zip",
            checksum: "e21aa10670a005827f590653052d0c361542059a7fe21d7f4c41806b9305784f"
        ),
.binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.2/shared_preferences_foundation.xcframework.zip",
            checksum: "a32c22641603af7a841479772238be047ac7f50352525767daad9fe28da58498"
        ),
.binaryTarget(
            name: "package_info_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.2/package_info_plus.xcframework.zip",
            checksum: "78f53ad39e5c500e54415a4c0fe21fafe0cb9c8d0c5e99cf1a9b4fb48c8dfdca"
        ),
.binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.2/FlutterPluginRegistrant.xcframework.zip",
            checksum: "4cb85939eee8c82daf3f9fe4efad7410bdc703e3a91f9e8f489931a02a15d40b"
        ),
.binaryTarget(
            name: "video_player_avfoundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.2/video_player_avfoundation.xcframework.zip",
            checksum: "5847e4397ed253fd72ae7111527a4057fc4c754d87437f4dd0584268bc3cd5ab"
        ),
.binaryTarget(
            name: "iphoneos",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.2/iphoneos.zip",
            checksum: "b955f1cfb99e13389074f342246d833f4bb2e7f8204ad2ff201333d2cb89535a"
        ),
.binaryTarget(
            name: "path_provider_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.2/path_provider_foundation.xcframework.zip",
            checksum: "469c32c343fe0f8bde45b7a5cd3c284c3ddf80efd3ec760a5271986a1695ce41"
        ),
.binaryTarget(
            name: "share_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.2/share_plus.xcframework.zip",
            checksum: "a9fa73b48b4e5624b5ff37ca88e01e57b1feb34d58ba547c3c5785969c05fa51"
        ),
.binaryTarget(
            name: "Flutter",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.2/Flutter.xcframework.zip",
            checksum: "11c630cd0ea3d5c5cb2741e57f84429258679e46c0ecdbfa0f53351b588c9b1a"
        )
        ]
)
