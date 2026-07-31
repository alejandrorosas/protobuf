"""Renames toplevel symbols so they can be exported in Starlark under the same name"""

load("@proto_bazel_features//:features.bzl", "bazel_features")

native_proto_common = getattr(native, "proto_common", None)
_bazel_version = getattr(native, "bazel_version", "") or "999999.999999.999999"
_major_version = int(_bazel_version.split("-")[0].split(".")[0]) if _bazel_version.split("-")[0].split(".")[0].isdigit() else 999
HAS_NATIVE_PROTO_FLAGS = getattr(bazel_features.rules, "has_proto_fragment", _major_version < 10)
