#!/usr/bin/bash
# tar helper

filename=$(basename "$1")
extension="${filename##*.}"

case "$extension" in
    "tar")
        echo "Deflating $filename"
        tar -xvf $filename
        ;;
    "gz")
        echo "Deflating $filename"
        tar -zxvf $filename
        ;;
    "bz2")
        echo "Deflating $filename"
        tar -jxvf $filename
        ;;
    "rar")
        echo "Deflating $filename"
        unrar e $filename
        ;;
    "zip")
        echo "Deflating $filename"
        unzip $filename
        ;;
    *)
        echo "$filename: No deflate rule for .$extension"
esac
