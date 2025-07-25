#!/bin/bash


if [ -z "$1" ]; then
    echo "Usage: mysum <filename>";
    exit 1;
fi

fname="$1";


if [ ! -f "$fname" ]; then
    echo "Err: file '${fname}' not found!";
    exit 1;
fi

sha256_sum=$(shasum -a 256 "$fname" | awk '{print $1}');

echo "SHA256 checksum: '$fname': $sha256_sum";
