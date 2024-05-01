#!/bin/zsh

webp_conversion_folder='webp_conversion'



for file in *; do
    mkdir -p $webp_conversion_folder;
    if [[ "$file" != "$webp_conversion_folder" ]]; then
        cwebp -q 80 "$file" -o "$webp_conversion_folder/${file%.*}.webp"
    fi
    
done