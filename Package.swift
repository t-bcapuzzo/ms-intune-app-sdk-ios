// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "IntuneMAM",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "IntuneMAMSwift",
                 type: .dynamic,
                 targets: ["IntuneMAMSwift", "IntuneMAMSwiftStub"]),
        .library(name: "IntuneMAMStatic",
                 type: .dynamic,
                 targets: ["IntuneMAMStatic", "IntuneMAMSwiftStub"]),
        .library(name: "IntuneMAMTelemetry",
                 type: .dynamic,
                 targets: ["IntuneMAMTelemetry"]),
        .library(name: "libIntuneMAMSwiftFileProvider",
                 type: .static,
                 targets: ["libIntuneMAMSwiftFileProvider", "IntuneMAMSwiftStub", "IntuneMAMResources"])
    ],
    targets: [
        // Local Binary Packages
        .binaryTarget(name: "IntuneMAMSwiftStub",
                      path: "./IntuneMAMSwiftStub.xcframework"
                     ),
        .binaryTarget(name: "IntuneMAMSwift",
                      path: "./IntuneMAMSwift.xcframework"
                     ),
        .binaryTarget(name: "IntuneMAMStatic",
                      path: "./IntuneMAMStatic.xcframework"
                     ),
        .binaryTarget(name: "IntuneMAMTelemetry",
                      path: "./IntuneMAMTelemetry.xcframework"
                     ),
        .binaryTarget(name: "IntuneMAMResources",
                      path: "./IntuneMAMResources.bundle"
                     ),
        .binaryTarget(name: "libIntuneMAMSwiftFileProvider",
                      path: "./libIntuneMAMSwiftFileProvider.xcframework"
                     )
    ]
)
