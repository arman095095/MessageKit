// swift-tools-version:5.5


import PackageDescription

let package = Package(
    name: "MessageKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "MessageKit", targets: ["MessageKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/nathantannar4/InputBarAccessoryView", .upToNextMajor(from: "6.1.0"))
    ],
    targets: [
        .target(
            name: "MessageKit",
            dependencies: ["InputBarAccessoryView"],
            path: "Sources",
            exclude: ["Supporting/Info.plist", "Supporting/MessageKit.h"],
            swiftSettings: [SwiftSetting.define("IS_SPM")]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
