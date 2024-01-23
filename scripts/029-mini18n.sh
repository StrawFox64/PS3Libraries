#!/bin/sh -e
# mini18n.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/StrawFox64/mini18n/tarball/master -O mini18n.tar.gz

## Create the build directory.
rm -Rf mini18n && mkdir mini18n

## Unpack the source code.
tar --strip-components=1 --directory=mini18n -xvzf mini18n.tar.gz

## Open directory.
cd mini18n

## Compile and install.
${MAKE:-make} install
