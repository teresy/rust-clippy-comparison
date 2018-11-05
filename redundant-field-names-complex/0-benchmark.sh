#!/bin/bash

echo 'clippy does not transform (but it does provide suggestions). this is just a benchmark'

cd rust-clippy
time cargo clippy --test redundant_field_names &> out.txt
grep replace out.txt
rm out.txt

time ~/rooibos-future/main -d . -filter .rs -template ~/rooibos-future/catalogue/rust/clippy/style/redundant-field-names-complex
git checkout -- .

cd ..
