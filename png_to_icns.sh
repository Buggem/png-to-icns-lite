#!/bin/bash
# Copyright(C) 2022 Ben Souchet | MIT License
usageFunction()
{
   echo "PNG to ICNS LITE v1.0 - A fork of another bash script less hard on your computer"
   echo ""
   echo "Usage: $0 -i <path of the .png image>"
   echo -e "\tArg 1: Relative path of the image (.png)"
   echo -e "\tArg 1: -h Display this usage message"
   echo -e "\tArg 2: Output icon name."
   exit 1
}

# If no option were passed display usage and exit
if [[ $1 == "" || $1 == "-h" ]]
then
    usageFunction
fi

if [ ! -f "$1" ]
then
    echo "Image file not found."
    exit 1
fi




output_iconset_name="${2}.iconset"

# Create the temp directory to save the icon sizes
mkdir $output_iconset_name

# Create the icon sizes
sips -z 16 16     "$1" --out "${output_iconset_name}/icon_16x16.png" > /dev/null
sips -z 32 32     "$1" --out "${output_iconset_name}/icon_16x16@2x.png" > /dev/null
sips -z 32 32     "$1" --out "${output_iconset_name}/icon_32x32.png" > /dev/null
sips -z 64 64     "$1" --out "${output_iconset_name}/icon_32x32@2x.png" > /dev/null
sips -z 128 128   "$1" --out "${output_iconset_name}/icon_128x128.png" > /dev/null
sips -z 256 256   "$1" --out "${output_iconset_name}/icon_128x128@2x.png" > /dev/null
sips -z 256 256   "$1" --out "${output_iconset_name}/icon_256x256.png" > /dev/null
sips -z 512 512   "$1" --out "${output_iconset_name}/icon_256x256@2x.png" > /dev/null
sips -z 512 512   "$1" --out "${output_iconset_name}/icon_512x512.png" > /dev/null


cp "$1" $output_iconset_name/icon_512x512@2x.png
iconutil -c icns $output_iconset_name

# Delete the temp folder
rm -R $output_iconset_name
exit 0
