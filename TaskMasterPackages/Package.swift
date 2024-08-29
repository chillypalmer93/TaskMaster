// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "TaskMasterPackages",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "ProjectsFeature", targets: ["ProjectsFeature"]),
        .library(name: "ClientsFeature", targets: ["ClientsFeature"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "0.40.0"),
    ],
    targets: [
        .target(
            name: "ProjectsFeature",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
            ]
        ),
        .target(
            name: "ClientsFeature",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
            ]
        ),
    ]
)
