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
sha512_sum=$(shasum -a 512 "$fname" | awk '{print $1}');
md5_sum=$(md5sum "$fname" | awk '{print $1}');

echo -e "\nSHA512 checksum: '$fname': $sha512_sum";
echo -e "\nSHA256 checksum: '$fname': $sha256_sum";
echo -e "\nMD5 checksum: '$fname': $md5_sum";
