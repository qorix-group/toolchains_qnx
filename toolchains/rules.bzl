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
def _qcc_toolchain_impl(rctx):
    rctx.template(
        "BUILD",
        rctx.attr.cc_tolchain_build,
        {
            "%{toolchain_sdp}": rctx.attr.sdp_repo,
        },
    )

    rctx.template(
        "cc_toolchain_config.bzl",
        rctx.attr.cc_toolchain_config_bzl,
        {},
    )

qcc_toolchain = repository_rule(
    implementation = _qcc_toolchain_impl,
    attrs = {
        "sdp_repo": attr.string(),
        "cc_toolchain_config_bzl": attr.label(
            default = "//toolchains/qcc:cc_toolchain_config.bzl",
        ),
        "cc_tolchain_build": attr.label(
            default = "//toolchains/qcc:toolchain.BUILD",
        ),
    },
)

def _ifs_toolchain_impl(rctx):
    rctx.template(
        "BUILD",
        rctx.attr.ifs_tolchain_build,
        {
            "%{toolchain_sdp}": rctx.attr.sdp_repo,
        },
    )

ifs_toolchain = repository_rule(
    implementation = _ifs_toolchain_impl,
    attrs = {
        "sdp_repo": attr.string(),
        "ifs_tolchain_build": attr.label(
            default = "//toolchains/fs/ifs:ifs.BUILD",
        ),
    },
)
