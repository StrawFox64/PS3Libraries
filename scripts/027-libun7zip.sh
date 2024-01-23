#!/bin/sh -e
# libun7zip.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/StrawFox64/libun7zip/tarball/master -O libun7zip.tar.gz

## Create the build directory.
rm -Rf libun7zip && mkdir libun7zip

## Unpack the source code.
tar --strip-components=1 --directory=libun7zip -xvzf libun7zip.tar.gz

## Open directory.
cd libun7zip

## Compile and install.
${MAKE:-make} install
