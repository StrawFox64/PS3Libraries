#!/bin/sh -e
# libsmb2.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/StrawFox64/libsmb2/tarball/master -O libsmb2.tar.gz

## Create the build directory.
rm -Rf libsmb2 && mkdir libsmb2

## Unpack the source code.
tar --strip-components=1 --directory=libsmb2 -xvzf libsmb2.tar.gz

## Open directory.
cd libsmb2/lib

## Compile and install.
${MAKE:-make} -f Makefile.PS3_PPU install
