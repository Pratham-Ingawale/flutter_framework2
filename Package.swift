// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "flutter_framework2",
    platforms: [
        .iOS(.v16),  // Specify the minimum iOS version you need
    ],
    products: [
        .executable(
            name: "flutter_framework2",  // The executable name
            targets: ["flutter_framework2_target"]  // The target for this executable
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0"),
    ],
    targets: [
        .executableTarget(
            name: "flutter_framework2_target",  // Executable target
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ],
            path: "Sources",
            resources: [
                .process("../frameworks/app_settings.xcframework"),
                .process("../frameworks/App.xcframework"),
                .process("../frameworks/flutter_inappwebview.xcframework"),
                .process("../frameworks/FlutterPluginRegistrant.xcframework"),
                .process("../frameworks/google_maps_flutter_ios.xcframework"),
                .process("../frameworks/location.xcframework"),
                .process("../frameworks/map_launcher.xcframework"),
                .process("../frameworks/OrderedSet.xcframework"),
                .process("../frameworks/path_provider_foundation.xcframework"),
                .process("../frameworks/permission_handler_apple.xcframework"),
                .process("../frameworks/shared_preferences_foundation.xcframework"),
                .process("../frameworks/sqflite.xcframework"),
                .process("../frameworks/url_launcher_ios.xcframework")
            ]
        ),
    ]
)
