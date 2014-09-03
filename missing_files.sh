#!/bin/bash

STOCKROM="$PORT_ROOT/ls995/stockrom/"

cd $STOCKROM

echo "Download missing files..."
wget -q http://roms.gerrett84.de/ls995/miui/patchrom/jb42/missing_files.zip

if [ ! -s "missing_files.zip" ];then
    echo "Download failed, try again later"
    exit 8
fi

echo "unzipping.."
unzip -q -o missing_files.zip

echo "remove zip"
rm *.zip

echo "finished"


