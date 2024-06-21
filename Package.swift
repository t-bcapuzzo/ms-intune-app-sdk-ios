// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "IntuneMAM",
    platforms: [
        .macOS(.v10_15), .iOS(.v14) // Check if these are the correct versions
    ],
    products: [
        .library(name: "IntuneMAMSwift", targets: ["IntuneMAMSwift"]),
        .library(name: "IntuneMAMStatic", targets: ["IntuneMAMStatic"])
    ],
    targets: [
        // Local Binary Packages
        .binaryTarget(name: "IntuneMAMSwiftStub",
                      path: "./IntuneMAMSwiftStub.xcframework")
        .binaryTarget(name: "IntuneMAMSwift", 
                      dependencies: ["IntuneMAMSwiftStub"],
                      path: "./IntuneMAMSwift.xcframework")
        .binaryTarget(name: "IntuneMAMStatic", path: "./IntuneMAMStatic.xcframework")
        
        // Remote Binary Packages
        // .binaryTarget(name: "IntuneMAM",
        //              url: "https://github.com/microsoftconnect/ms-intune-app-sdk-ios/releases/download/t3/??.zip",
        //              checksum: "INCOMPLETE"),
    ]
)
