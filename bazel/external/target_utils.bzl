# Copyright 2024 Intel Corporation
# Copyright 2026 Derek Foster
# SPDX-License-Identifier: Apache-2.0

def _impl(repository_ctx):
    if "ES2K_INSTALL" in repository_ctx.os.environ:
        sde_path = repository_ctx.os.environ["ES2K_INSTALL"]
    elif "DPDK_INSTALL" in repository_ctx.os.environ:
        sde_path = repository_ctx.os.environ["DPDK_INSTALL"]
    else:
        fail("ES2K_INSTALL/DPDK_INSTALL not defined")
        repository_ctx.file("BUILD.bazel", "")
        return

    repository_ctx.symlink(sde_path, "target-utils")
    repository_ctx.symlink(
        Label("@//bazel:external/target_utils.BUILD"),
        "BUILD.bazel",
    )

configure_target_utils = repository_rule(
    implementation = _impl,
    local = True,
    environ = ["ES2K_INSTALL", "DPDK_INSTALL"],
)
