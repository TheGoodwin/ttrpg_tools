#!/bin/zsh

half_size_conversion_folder='half_size_conversion'



for file in *; do
    mkdir -p $half_size_conversion_folder;
    if [[ "$file" != "$half_size_conversion_folder" ]]; then
        convert "$file" -resize 50% "$half_size_conversion_folder/$file"
    fi
    
done