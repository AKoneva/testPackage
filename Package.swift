// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MyLibrary",
    platforms: [
            .iOS(.v15)
        ],
    products: [
        .library(
            name: "MyLibrary",
            targets: ["MyLibrary"]
        ),
    ],
    targets: [
        .target(
            name: "MyLibrary",
            path: "Sources/MyLibrary"
        ),
        .testTarget(
            name: "MyLibraryTests",
            dependencies: ["MyLibrary"],
            path: "Tests/MyLibraryTests"
        ),
    ]
)
