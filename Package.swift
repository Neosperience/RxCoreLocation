// swift-tools-version:5.3
//
//  RxCoreLocation.swift
//  RxCoreLocation
//
//  Created by Obi Bob Godwin on 23/10/15.
//  Copyright © 2017 RxCoreLocation. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "RxCoreLocation",
    defaultLocalization: "en",
    platforms: [ .iOS(.v11)],
    products: [
        .library(name: "RxCoreLocation", targets: ["RxCoreLocation"])
    ],
    dependencies: [
        .package(name: "RxSwift", url: "https://github.com/ReactiveX/RxSwift.git", .exact("5.1.1")),
    ],
    targets: [
        .target(name: "RxCoreLocation",
                dependencies: [
                    .product(name: "RxSwift", package: "RxSwift"),
                    .product(name: "RxCocoa", package: "RxSwift")
                ],
                path: "Sources")
    ]
)
