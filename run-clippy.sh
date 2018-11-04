#!/bin/bash

cd clippy-and-examples
time cargo clippy --example redundant_pattern_matching && rm -r target
