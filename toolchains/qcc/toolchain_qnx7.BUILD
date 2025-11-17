# *******************************************************************************
# Copyright (c) 2025 Contributors to the Eclipse Foundation
#
# See the NOTICE file(s) distributed with this work for additional
# information regarding copyright ownership.
#
# This program and the accompanying materials are made available under the
# terms of the Apache License Version 2.0 which is available at
# https://www.apache.org/licenses/LICENSE-2.0
#
# SPDX-License-Identifier: Apache-2.0
# *******************************************************************************
load(":cc_toolchain_config.bzl", "cc_toolchain_config") # The template rules will output qnx7 file as this file.

filegroup(
    name = "aarch64_all_files",
    srcs = [
        "@%{toolchain_sdp}//:aarch64_all_files",
    ],
)

filegroup(
    name = "empty",
)


cc_toolchain_config(
    name = "qcc_toolchain_config_aarch64",
    ar_binary = "@%{toolchain_sdp}//:aarch64_ar",
    cc_binary = "@%{toolchain_sdp}//:aarch64_qcc",
    cxx_binary = "@%{toolchain_sdp}//:aarch64_qpp",
    strip_binary = "@%{toolchain_sdp}//:aarch64_strip",
    qnx_host = "@%{toolchain_sdp}//:aarch64_host_dir",
    qnx_target = "@%{toolchain_sdp}//:aarch64_target_dir",
    cxx_builtin_include_directories = "@%{toolchain_sdp}//:aarch64_cxx_builtin_include_directories",
    # only flags differ
    # arch = "aarch64",
    # qcc_version = "8.3.0",
    # gcc_variant = "gcc_ntoaarch64le",
    # gcc_variant_cxx = "gcc_ntoaarch64le_cxx",
  
)

cc_toolchain(
    name = "qcc_toolchain",
    all_files = ":aarch64_all_files",
    ar_files = ":aarch64_all_files",
    as_files = ":aarch64_all_files",
    compiler_files = ":aarch64_all_files",
    dwp_files = ":empty",
    linker_files = ":aarch64_all_files",
    objcopy_files = ":empty",
    strip_files = ":aarch64_all_files",
    toolchain_config = ":qcc_toolchain_config_aarch64",
)

toolchain(
    name = "qcc_aarch64",
    exec_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
    ],
    target_compatible_with = [
        "@platforms//cpu:aarch64",
        "@platforms//os:qnx",
    ],
    toolchain = ":qcc_toolchain",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
    visibility = [
        "//:__pkg__",
    ]
)
