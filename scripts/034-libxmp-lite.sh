#!/bin/sh -e
# libxmp-lite.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/StrawFox64/libxmp-lite/tarball/master -O libxmp-lite.tar.gz

## Create the build directory.
rm -Rf libxmp-lite && mkdir libxmp-lite

## Unpack the source code.
tar --strip-components=1 --directory=libxmp-lite -xvzf libxmp-lite.tar.gz

## Open directory.
cd libxmp-lite

## Compile and install.
${MAKE:-make} -f Makefile.ps3 install
