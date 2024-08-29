// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "TaskMasterPackages",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "Core", targets: ["Core"]),
        .library(name: "ProjectsFeature", targets: ["ProjectsFeature"]),
        .library(name: "ClientsFeature", targets: ["ClientsFeature"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "0.40.0"),
    ],
    targets: [
        .target(
            name: "Core",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
            ]
        ),
        .target(
            name: "ProjectsFeature",
            dependencies: ["Core"]
        ),
        .target(
            name: "ClientsFeature",
            dependencies: ["Core"]
        ),
        .testTarget(
            name: "CoreTests",
            dependencies: ["Core"]
        ),
        .testTarget(
            name: "ProjectsFeatureTests",
            dependencies: ["ProjectsFeature"]
        ),
        .testTarget(
            name: "ClientsFeatureTests",
            dependencies: ["ClientsFeature"]
        ),
    ]
)