#!/bin/sh -e
# Ya2D.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/StrawFox64/Ya2D/tarball/master -O Ya2D.tar.gz

## Create the build directory.
rm -Rf Ya2D && mkdir Ya2D

## Unpack the source code.
tar --strip-components=1 --directory=Ya2D -xvzf Ya2D.tar.gz

## Open directory.
cd Ya2D/libya2d

## Compile and install.
${MAKE:-make} install
