#!/bin/bash
set -e

RUSTFLAGS='-C link-arg=-s' cargo build --manifest-path ./ella-token/Cargo.toml --target wasm32-unknown-unknown --release
cp ./**/target/wasm32-unknown-unknown/release/*.wasm ./res/

