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
package(default_visibility = [
    "//visibility:public",
])

filegroup(
    name = "aarch64_all_files",
    srcs = glob(["*/**/*"]),
)

filegroup(
    name = "aarch64_cxx_builtin_include_directories",
    srcs = [
        # GCC internal headers
        "host/linux/x86_64/usr/lib/gcc/aarch64-unknown-nto-qnx7.1.0/8.3.0/include",

        # System headers
        "target/qnx7/usr/include",

        # C++ standard library headers
        "target/qnx7/usr/include/c++/8.3.0",
        "target/qnx7/usr/include/c++/8.3.0/aarch64-unknown-nto-qnx7.1.0",

        # QNX C library headers (POSIX, libc)
        "target/qnx7/usr/include/posix",
    ],
)

filegroup(
    name = "aarch64_ar",
    srcs = ["host/linux/x86_64/usr/bin/aarch64-unknown-nto-qnx7.1.0-ar"],
)

filegroup(
    name = "aarch64_qcc",
    srcs = ["host/linux/x86_64/usr/bin/qcc"],
)

filegroup(
    name = "aarch64_qpp",
    srcs = ["host/linux/x86_64/usr/bin/q++"],
)

filegroup(
    name = "aarch64_strip",
    srcs = ["host/linux/x86_64/usr/bin/aarch64-unknown-nto-qnx7.1.0-strip"],
)

filegroup(
    name = "aarch64_host_all",
    srcs = glob(["host/linux/x86_64/**/*"]),
)

filegroup(
    name = "aarch64_host_dir",
    srcs = ["host/linux/x86_64"],
)

filegroup(
    name = "aarch64_target_all",
    srcs = glob(["target/qnx7/**/*"]),
)

filegroup(
    name = "aarch64_target_dir",
    srcs = ["target/qnx7"],
)

filegroup(
    name = "aarch64_mkifs",
    srcs = ["host/linux/x86_64/usr/bin/mkifs"],
)