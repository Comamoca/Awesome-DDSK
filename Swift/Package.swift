// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "DDSK",
    defaultLocalization: "ja",
    targets: [
        .executableTarget(
            name: "DDSK",
            path: "Sources",
            resources: [.process("Resources")]),
    ]
)
