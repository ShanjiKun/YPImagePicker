// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "YPImagePicker",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "YPImagePicker", targets: ["YPImagePicker"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/freshOS/Stevia",
            .exact("4.7.3")
        ),
        .package(
            url: "https://github.com/HHK1/PryntTrimmerView",
            .exact("4.0.2")
        )

    ],
    targets: [
        .target(
            name: "YPImagePicker",
            dependencies: ["Stevia", "PryntTrimmerView"],
            path: "Source",
            exclude: ["Info.plist", "YPImagePickerHeader.h"],
            resources: [
                .copy("../Images/logo/icon_svg.svg"),
                .copy("../Images/logo/icon.png"),
                .copy("../Images/logo/logotype_horizontal_svg.svg"),
                .copy("../Images/logo/logotype_horizontal.png"),
                .copy("../Images/coreTeam1.png"),
                .copy("../Images/coreTeam2.png"),
                .copy("../Images/filters.PNG"),
                .copy("../Images/library.PNG"),
                .copy("../Images/photo.PNG"),
                .copy("../Images/video.PNG"),
                .copy("../Images/visual.jpg"),
            ]
        )
    ]
)
