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
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.5/App.xcframework.zip",
            checksum: "66a7c9a18d90d7e6178fc6d9732233e5c2d246217638cf1ee42ed2509fa10603"
        ),
.binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.5/shared_preferences_foundation.xcframework.zip",
            checksum: "5799dcaca152a0c0882654734293e1c79882785c5ba6ce219dd69801859cbea2"
        ),
.binaryTarget(
            name: "package_info_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.5/package_info_plus.xcframework.zip",
            checksum: "c00922f54e5509684ecf80522906a20f201aa91db7ba54e6bd6afa1386546868"
        ),
.binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.5/FlutterPluginRegistrant.xcframework.zip",
            checksum: "3704d0d9bd187068c9f7a9bc86a2c76a39e06d5cdad4747ac4164708013c20a4"
        ),
.binaryTarget(
            name: "video_player_avfoundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.5/video_player_avfoundation.xcframework.zip",
            checksum: "0b0bd197125509f99c4487ed8d1a8de11d15800ef36cc9e497a0858245fcfe36"
        ),
.binaryTarget(
            name: "path_provider_foundation",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.5/path_provider_foundation.xcframework.zip",
            checksum: "10f46421b55642aca26ca2b740ae104b14a629b85f5562943e8548fc8ab74b22"
        ),
.binaryTarget(
            name: "share_plus",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.5/share_plus.xcframework.zip",
            checksum: "dd478ef9f01f8d36a96346d06869b99d853c76340b18e199c7cd09a4e129118c"
        ),
.binaryTarget(
            name: "Flutter",
            url: "https://maven-repository.blinkoo.com/repository/ios-sdk/0.0.5/Flutter.xcframework.zip",
            checksum: "510875528c12153c9f44671cfef95580db25c0eb73a7dc92ae17ed2ad75b9573"
        )
        ]
)
