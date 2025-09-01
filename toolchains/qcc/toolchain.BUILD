# *******************************************************************************
# Copyright (c) 2025 Contributors to the Eclipse Foundation
# SPDX-License-Identifier: Apache-2.0
# *******************************************************************************

load(":cc_toolchain_config.bzl", "cc_toolchain_config")
load(":cc_toolchain_config_aarch64.bzl", "cc_toolchain_config_aarch64")

filegroup(
    name = "all_files",
    srcs = ["@%{toolchain_sdp}//:all_files"],
)

filegroup(
    name = "empty",
)

# ---------- x86_64 config + toolchain ----------
cc_toolchain_config(
    name = "qcc_toolchain_config_x86_64",
    ar_binary = "@%{toolchain_sdp}//:ar",
    cc_binary = "@%{toolchain_sdp}//:qcc",
    cxx_binary = "@%{toolchain_sdp}//:qpp",   # same driver; -V selects arch
    strip_binary = "@%{toolchain_sdp}//:strip",
    qnx_host = "@%{toolchain_sdp}//:host_dir",
    qnx_target = "@%{toolchain_sdp}//:target_dir",
    cxx_builtin_include_directories = "@%{toolchain_sdp}//:cxx_builtin_include_directories",
)

cc_toolchain(
    name = "qcc_toolchain_x86_64",
    all_files = ":all_files",
    ar_files = ":all_files",
    as_files = ":all_files",
    compiler_files = ":all_files",
    dwp_files = ":empty",
    linker_files = ":all_files",
    objcopy_files = ":empty",
    strip_files = ":all_files",
    toolchain_config = ":qcc_toolchain_config_x86_64",
)

toolchain(
    name = "qcc_x86_64",
    exec_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
    ],
    target_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:qnx",
    ],
    toolchain = ":qcc_toolchain_x86_64",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
    visibility = ["//:__pkg__"],
)

# ---------- aarch64 config + toolchain ----------
cc_toolchain_config_aarch64(
    name = "qcc_toolchain_config_aarch64",
    ar_binary = "@%{toolchain_sdp}//:ar",
    cc_binary = "@%{toolchain_sdp}//:qcc",
    cxx_binary = "@%{toolchain_sdp}//:qpp",   # same driver; -V selects arch
    strip_binary = "@%{toolchain_sdp}//:strip",
    qnx_host = "@%{toolchain_sdp}//:host_dir",
    qnx_target = "@%{toolchain_sdp}//:target_dir",
    cxx_builtin_include_directories = "@%{toolchain_sdp}//:cxx_builtin_include_directories",
)

cc_toolchain(
    name = "qcc_toolchain_aarch64",
    all_files = ":all_files",
    ar_files = ":all_files",
    as_files = ":all_files",
    compiler_files = ":all_files",
    dwp_files = ":empty",
    linker_files = ":all_files",
    objcopy_files = ":empty",
    strip_files = ":all_files",
    toolchain_config = ":qcc_toolchain_config_aarch64",
)

toolchain(
    name = "qcc_aarch64",
    exec_compatible_with = [
        "@platforms//cpu:x86_64",   # build host
        "@platforms//os:linux",
    ],
    target_compatible_with = [
        "@platforms//cpu:aarch64",  # QNX target
        "@platforms//os:qnx",
    ],
    toolchain = ":qcc_toolchain_aarch64",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
    visibility = ["//:__pkg__"],
)
