#!/bin/sh -e
# tiny3D.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/StrawFox64/tiny3D/tarball/master -O tiny3D.tar.gz

## Create the build directory.
rm -Rf tiny3D && mkdir tiny3D

## Unpack the source code.
tar --strip-components=1 --directory=tiny3D -xvzf tiny3D.tar.gz

## Open directory.
cd tiny3D

## Compile and install.
${MAKE:-make}
