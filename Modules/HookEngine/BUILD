
objc_library(
    name = "HookEngine",
    enable_modules = True,
    module_name = "HookEngine",
    srcs = glob([
        "Sources/*.m",
        "Sources/*.h",
    ]),
    hdrs = glob([
        "PublicHeaders/**/*.h",
    ]),
    includes = [
        "PublicHeaders",
    ],
    sdk_frameworks = [
      "Foundation",
    ],
    visibility = [
        "//visibility:public",
    ],
)
