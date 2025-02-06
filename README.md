<!-- markdownlint-disable MD041 -->
[![Krnlmon CI Pipeline](https://github.com/ipdk-io/krnlmon/actions/workflows/pipeline.yml/badge.svg)](https://github.com/ipdk-io/krnlmon/actions/workflows/pipeline.yml)
<!-- markdownlint-enable MD041 -->

# ffoulkes/krnlmon

The Kernel Monitor receives RFC 3549 messages from the Linux Kernel over a
Netlink socket when changes are made to the kernel networking data structures.

## Background

In January 2025, Intel decided to roll the IPDK networking-recipe `main`
branch and its submodules back to their `mev-ts-1.9` release (Sep 30, 2024),
effectively discarding the work I had done since then.
This fork allows me to keep tinkering without stepping on their toes.

## Contents

This repository is a fork of <https://github.com/ipdk-io/krnlmon>.
It is a submodule of <https://github.com/ffoulkes/networking-recipe>.

Ongoing development is done in the `ffoulkes` branch.

- The `mev-ts-1.9` tag marks the point at which the `ffoulkes` branch
  diverges from the ipdk-io `main` branch.

- The `v3.2.0.0` tag marks the point at which this repository was forked.
  It corresponds to
  [Krnlmon v3.2.0.0](https://github.com/ipdk-io/krnlmon/releases/tag/v3.2.0.0).

