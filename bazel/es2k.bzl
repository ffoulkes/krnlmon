# //bazel:es2k.bzl
# Copyright 2022 Intel Corporation
# Copyright 2026 Derek Foster
# SPDX-License-Identifier: Apache-2.0

# This Starlark rule imports the ES2K SDE shared libraries and headers.
# The ES2K_INSTALL environment variable specifies the directory
# path to the SDE.

def _impl(repository_ctx):
    if "ES2K_INSTALL" in repository_ctx.os.environ:
        sde_path = repository_ctx.os.environ["ES2K_INSTALL"]
    else:
        repository_ctx.file("BUILD.bazel", "")
        return

    target = repository_ctx.read(sde_path + "/share/TARGET").strip().upper()
    if target != "ES2K":
        fail("DPDK_INSTALL: SDE target type is not ES2K")
    print("SDE target type is ES2K")

    repository_ctx.symlink(sde_path, "es2k-bin")
    repository_ctx.symlink(Label("@//bazel:external/es2k.BUILD"), "BUILD")

es2k_configure = repository_rule(
    implementation = _impl,
    local = True,
    environ = ["ES2K_INSTALL"],
)
