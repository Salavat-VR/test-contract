#!/bin/bash
set -e

cargo test --manifest-path ./ella-token/Cargo.toml -- --nocapture
