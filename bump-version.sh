#!/bin/sh

set -e

version=`cat version`
newversion=`semver -i "$1" $version`
echo "Old version: $version"
echo "New version: $newversion"
echo $newversion > version
sed -E -i "s|^// \@version .*|// @version $newversion|g" context-menu.user.js
awk '/^\/\/ ==UserScript==$/,/^\/\/ ==\/UserScript==$/' context-menu.user.js > context-menu.meta.js
