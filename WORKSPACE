load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "a5f00fd89eff67291f6cd3efdc8fad30f4727e6ebb90718f3f05bbf3c3dd5ed7",
    url = "https://github.com/bazelbuild/rules_apple/releases/download/0.33.0/rules_apple.0.33.0.tar.gz",
)

http_archive(
    name = "rules_pods",
    urls = ["https://github.com/pinterest/PodToBUILD/releases/download/4.0.0-ad1dec4/PodToBUILD.zip"],
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()



load("@rules_pods//BazelExtensions:workspace.bzl", "new_pod_repository")

new_pod_repository(
  name = "PINOperation",
  url = "https://github.com/pinterest/PINOperation/archive/1.2.1.zip",
)

new_pod_repository(
    name = "SlackTextViewController",
    url = "https://github.com/slackhq/SlackTextViewController/archive/v1.9.6.zip",
    inhibit_warnings = True
)