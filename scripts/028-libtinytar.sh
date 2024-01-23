#!/bin/sh -e
# libtinytar.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/StrawFox64/libtinytar/tarball/master -O libtinytar.tar.gz

## Create the build directory.
rm -Rf libtinytar && mkdir libtinytar

## Unpack the source code.
tar --strip-components=1 --directory=libtinytar -xvzf libtinytar.tar.gz

## Open directory.
cd libtinytar

## Compile and install.
${MAKE:-make} install
