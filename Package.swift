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
                 targets: ["IntuneMAMSwift"]),
        .library(name: "IntuneMAMStatic",
                 type: .static,
                 targets: ["IntuneMAMStatic"]),
        .library(name: "IntuneMAMTelemetry",
                 type: nil,
                 targets: ["IntuneMAMTelemetry"]),
        .library(name: "libIntuneMAMSwift",
                 type: .static,
                 targets: ["libIntuneMAMSwift"]),
        .library(name: "libIntuneMAMSwiftFileProvider",
                 type: .static,
                 targets: ["libIntuneMAMSwiftFileProvider"])
    ],
    dependencies: [
        .package(path: "./IntuneMAMSwiftStub.xcframework")
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
        .binaryTarget(name: "libIntuneMAMSwift",
                      path: "./libIntuneMAMSwift.xcframework"
                     ),
        .binaryTarget(name: "libIntuneMAMSwiftFileProvider",
                      path: "./libIntuneMAMSwiftFileProvider.xcframework"
                     )
        
        // Remote Binary Packages
        // .binaryTarget(name: "IntuneMAM",
        //              url: "https://github.com/microsoftconnect/ms-intune-app-sdk-ios/releases/download/t3/??.zip",
        //              checksum: "INCOMPLETE"),
    ]
)
