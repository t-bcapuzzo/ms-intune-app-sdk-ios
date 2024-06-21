// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "IntuneMAM",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v14)
    ],
    products: [
        .library(name: "IntuneMAMSwift", 
                 targets: ["IntuneMAMSwift"]),
        .library(name: "IntuneMAMStatic", 
                 targets: ["IntuneMAMStatic"]),
        .library(name: "IntuneMAMTelemetry", 
                 targets: ["IntuneMAMTelemetry"]),
        .library(name: "libIntuneMAMSwift", 
                 targets: ["libIntuneMAMSwift"]),
        .library(name: "libIntuneMAMSwiftFileProvider", 
                 targets: ["libIntuneMAMSwiftFileProvider"])
    ],
    targets: [
        // Local Binary Packages
        .binaryTarget(name: "IntuneMAMSwiftStub",
                      path: "./IntuneMAMSwiftStub.xcframework"
                     ),
        .binaryTarget(name: "IntuneMAMSwift",
                      dependencies: ["IntuneMAMSwiftStub"],
                      path: "./IntuneMAMSwift.xcframework"
                     ),
        .binaryTarget(name: "IntuneMAMStatic",
                      dependencies: ["IntuneMAMSwiftStub"],
                      path: "./IntuneMAMStatic.xcframework"
                     ),
        .binaryTarget(name: "IntuneMAMTelemetry",
                      path: "./IntuneMAMTelemetry.xcframework"
                     ),
        .binaryTarget(name: "IntuneMAMResources",
                      path: "./IntuneMAMResources.bundle"
                     ),
        .binaryTarget(name: "libIntuneMAMSwift",
                      dependencies: ["IntuneMAMSwiftStub", 
                                     "IntuneMAMResources"],
                      path: "./libIntuneMAMSwift.xcframework"
                     ),
        .binaryTarget(name: "libIntuneMAMSwiftFileProvider",
                      dependencies: ["IntuneMAMSwiftStub", 
                                     "IntuneMAMResources"],
                      path: "./libIntuneMAMSwiftFileProvider.xcframework"
                     )
        
        // Remote Binary Packages
        // .binaryTarget(name: "IntuneMAM",
        //              url: "https://github.com/microsoftconnect/ms-intune-app-sdk-ios/releases/download/t3/??.zip",
        //              checksum: "INCOMPLETE"),
    ]
)
