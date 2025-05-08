# //bazel/external/nl-3.BUILD

# Copyright 2024 Intel Corporation
# Copyright 2025 Derek Foster
# SPDX-License-Identifier: Apache-2.0

load("@rules_cc//cc:defs.bzl", "cc_import")

cc_import(
    name = "nl-3",
    hdrs = glob(["include/**/*.h"]),
    includes = ["/usr/include/libnl3"],
    system_provided = 1,
    visibility = ["//visibility:public"],
)
