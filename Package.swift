// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "IntuneMAM",
    platforms: [
        .macOS(.v10_15), .iOS(.v14) // Check if these are the correct versions
    ],
    products: [
        .library(name: "IntuneMAM", targets: ["IntuneMAMSwift"])
    ],
    // dependencies: [
        // .package(url: "https://url/of/another/package/named/utility", from: "1.0.0")
    // ],
    targets: [
        // .target(name: "MyLibrary", dependencies: ["Utility"]),
        // .testTarget(name: "MyLibraryTests", dependencies: ["MyLibrary"]),
        // .binaryTarget(name: "IntuneMAM", url: "https://github.com/microsoftconnect/ms-intune-app-sdk-ios/releases/download/1.3.3/MSAL.zip", checksum: "INCOMPLETE"), // Remote Binary Package
        .binaryTarget(name: "IntuneMAMSwift", path: "./IntuneMAMSwift.xcframework") // Local Binary Package
    ]
)
