// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Protobuf",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v9),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "Protobuf",
            targets: ["Protobuf"]
        )
    ],
    targets: [
        .target(
            name: "Protobuf",
            path: "objectivec",
            exclude: [
                ".clang-format",
                ".gitignore",
                "DevTools",
                "GPBProtocolBuffers.m",
                "ProtocolBuffers_OSX.xcodeproj",
                "ProtocolBuffers_iOS.xcodeproj",
                "ProtocolBuffers_tvOS.xcodeproj",
                "README.md",
                "Tests",
                "generate_well_known_types.sh"
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .unsafeFlags(["-fno-objc-arc"])
            ]
        )
    ]
)
