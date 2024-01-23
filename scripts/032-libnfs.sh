#!/bin/sh -e
# libnfs.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/StrawFox64/libnfs/tarball/master -O libnfs.tar.gz

## Create the build directory.
rm -Rf libnfs && mkdir libnfs

## Unpack the source code.
tar --strip-components=1 --directory=libnfs -xvzf libnfs.tar.gz

## Open directory.
cd libnfs

## Compile and install.
${MAKE:-make} -f ps3_ppu/Makefile.PS3_PPU install
