// swift-tools-version: 6.0

import PackageDescription

let otherSwiftFlags = [
    "-Xfrontend", "-warn-long-expression-type-checking=500",
    "-Xfrontend", "-warn-long-function-bodies=500",
    "-strict-concurrency=complete",
    "-enable-actor-data-race-checks",
]

let swiftSettings: [PackageDescription.SwiftSetting] = [
    .unsafeFlags(otherSwiftFlags),
    .enableUpcomingFeature("ExistentialAny"), // SE-0335
    .enableUpcomingFeature("InternalImportsByDefault"), // SE-0409
]

// MARK: - Package

let package = Package(
    name: "VimConf2024Package",
    defaultLocalization: "ja",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
    ],
    products: [
        .library(
            name: "VimConf2024",
            targets: ["VimConf2024App"]),
    ],
    dependencies: [
    ],
    targets: [
        // MARK: App layer

        .target(
            name: "VimConf2024App",
            dependencies: [
                "TimetableFeature",
                "SessionFeature",
                "RoutingCore",
            ],
            path: "./Sources/Apps/VimConf2024"),

        // MARK: Feature layer

        .target(
            name: "TimetableFeature",
            dependencies: [
                "TimetableData",
            ],
            path: "./Sources/Features/Timetable"),
        .target(
            name: "SessionFeature",
            dependencies: [
                "SessionData",
            ],
            path: "./Sources/Features/Session"),

        // MARK: Data layer

        .target(
            name: "TimetableData",
            dependencies: [
                "SessionData",
            ],
            path: "./Sources/Data/Timetable"),
        .target(
            name: "SessionData",
            path: "./Sources/Data/Session"),
        
        // MARK: Core layer

        .target(
            name: "RoutingCore",
            dependencies: [
            ],
            path: "./Sources/Core/Routing"),
    ]
)

for target in package.targets {
    target.swiftSettings = swiftSettings

    if target.name.hasSuffix("Feature") {
        target.dependencies.append("RoutingCore")
    }
}
