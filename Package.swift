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
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.3/App.xcframework.zip",
            checksum: "422326c32ec733679c86ba66b444eee075352065505d7049404acbd4c93f6557"
        ),
.binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.3/shared_preferences_foundation.xcframework.zip",
            checksum: "41724032a040a1cb28ddc36bb4a56ba96477fa3c823e290008c6610f3e664fb6"
        ),
.binaryTarget(
            name: "package_info_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.3/package_info_plus.xcframework.zip",
            checksum: "5183b6ea97e09575971e604b1557e469ca7141e061262e551ccf2c3f76eb2274"
        ),
.binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.3/FlutterPluginRegistrant.xcframework.zip",
            checksum: "736517dcfff09e7cfff1be837ef11c6f6e822af950abf9a08bbc43073bac32f8"
        ),
.binaryTarget(
            name: "video_player_avfoundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.3/video_player_avfoundation.xcframework.zip",
            checksum: "ddcde0d9f32c2f22f89d06964c9dc6a545aba1d22a59b3cdc4f9362d62bc3ab9"
        ),
.binaryTarget(
            name: "path_provider_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.3/path_provider_foundation.xcframework.zip",
            checksum: "979458391d71187780c032f441a83084ffeb7e6ad9df79bd6e133956207eb395"
        ),
.binaryTarget(
            name: "share_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.3/share_plus.xcframework.zip",
            checksum: "4e4dc70d2452aa2e107285372f01030192cc7339327b32589589b68e1677031c"
        ),
.binaryTarget(
            name: "Flutter",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.3/Flutter.xcframework.zip",
            checksum: "1362790bec13b78de5e8976ccc862e4276db8dd111fb2ab4917302ff6e33ac75"
        )
        ]
)
