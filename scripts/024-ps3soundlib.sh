#!/bin/sh -e
# ps3soundlib.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/StrawFox64/ps3soundlib/tarball/master -O ps3soundlib.tar.gz

## Create the build directory.
rm -Rf ps3soundlib && mkdir ps3soundlib

## Unpack the source code.
tar --strip-components=1 --directory=ps3soundlib -xvzf ps3soundlib.tar.gz

## Open directory.
cd ps3soundlib

## Compile and install.
${MAKE:-make}
