#!/bin/bash
set -euxo pipefail

swift-format --recursive Sources/ApiClient Tests/ApiClientTests lint.swift --in-place
swift-format lint --recursive Sources/ApiClient Tests/ApiClientTests lint.swift
 anylint
