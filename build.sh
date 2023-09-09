#!/bin/bash
mkdir .output

for dir in */; do
    if [[ $dir == .* ]]; then
        echo "Compiling resource pack: $dir"
        zip -r out.zip "./$dir"
        mv out.zip "./.output/$dir.zip"
    fi
done
