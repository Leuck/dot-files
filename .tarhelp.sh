#!/usr/bin/bash
# tar helper

ARGC=$#
USAGE="
Usage:

Extract contents of file FILE:

    deflatar FILE

List contents of file FILE:

    deflatar -l FILE
"
echo $#
if [ $ARGC -eq 1 ]
then
    filename=$(basename "$1")
    if [ -f $filename ]
        then
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
                ;;
        esac
    else
        echo "$filename: Not a valid file."
    fi
elif [ $ARGC -eq 2 ]
then
    while getopts :l: option
    do
        case "${option}" in
            l)
                filename=$(basename "${OPTARG}")
                extension="${filename##*.}"
                case "$extension" in
                    "tar")
                        echo "Listing $filename"
                        tar -tvf $filename
                        ;;
                    "gz")
                        echo "Listing $filename"
                        tar -ztvf $filename
                        ;;
                    "bz2")
                        echo "Listing $filename"
                        tar -jtvf $filename
                        ;;
                    "rar")
                        echo "Listing $filename"
                        unrar l $filename
                        ;;
                    "zip")
                        echo "Listing $filename"
                        unzip -l $filename
                        ;;
                    *)
                        echo "$filename: No listing rule for .$extension"
                        ;;
                esac
                ;;
            \?) echo "Invalid switch." ;;
        esac
    done
else
    echo "$USAGE"
fi

