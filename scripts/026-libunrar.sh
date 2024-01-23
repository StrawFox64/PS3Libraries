#!/bin/sh -e
# libunrar.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/StrawFox64/libunrar/tarball/master -O libunrar.tar.gz

## Create the build directory.
rm -Rf libunrar && mkdir libunrar

## Unpack the source code.
tar --strip-components=1 --directory=libunrar -xvzf libunrar.tar.gz

## Open directory.
cd libunrar

## Compile and install.
${MAKE:-make} install
