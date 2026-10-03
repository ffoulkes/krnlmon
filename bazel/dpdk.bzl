# //bazel:dpdk.bzl
# Copyright 2022-2024 Intel Corporation
# Copyright 2026 Derek Foster
# SPDX-License-Identifier: Apache-2.0

# This Starlark rule imports the DPDK SDE shared libraries and headers.
# The DPDK_INSTALL environment variable must specify the directory
# path of the SDE.

def _impl(repository_ctx):
    if "DPDK_INSTALL" in repository_ctx.os.environ:
        sde_path = repository_ctx.os.environ["DPDK_INSTALL"]
    else:
        repository_ctx.file("BUILD.bazel", "")
        return

    target = repository_ctx.read(sde_path + "/share/TARGET").strip().upper()
    if target != "DPDK":
        fail("DPDK_INSTALL: SDE target type is not DPDK")
    print("SDE target type is DPDK")

    repository_ctx.symlink(sde_path, "dpdk-bin")
    repository_ctx.symlink(Label("@//bazel:external/dpdk.BUILD"), "BUILD.bazel")

dpdk_configure = repository_rule(
    implementation = _impl,
    local = True,
    environ = ["DPDK_INSTALL"],
)
