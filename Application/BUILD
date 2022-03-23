load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Application",
    module_name = "Application",
    srcs = glob([
        "Sources/**/*.swift",
    ]),
    copts = [
        "-warnings-as-errors",
    ],
    data = [
        "Resources/Base.lproj/LaunchScreen.storyboard",
        "Resources/Base.lproj/Main.storyboard",
    ],
    deps = [
        "//Modules/HookEngine:HookEngine",
        "//Modules/Logging:Logging",
        "@SlackTextViewController//:SlackTextViewController",
        "@PINOperation//:PINOperation"

    ]
)

ios_application(
    name = "ios-app",
    bundle_id = "com.taydu.gvmteam.vn",
    families = [
        "iphone",
        "ipad",
    ],
    minimum_os_version = "9.0",
    infoplists = [
        ":Info.plist"
    ],

    visibility = ["//visibility:public"],
    deps = [
        ":Application"
    ],
)
