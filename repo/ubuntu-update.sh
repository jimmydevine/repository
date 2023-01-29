#!/bin/sh

cd ubuntu/

# package
dpkg-scanpackages --arch all pool/ > dists/stable/main/binary-arm64/Packages
cat dists/stable/main/binary-arm64/Packages | gzip -9 > dists/stable/main/binary-arm64/Packages.gz

cd dists/stable

# release
generate-release > Release

# inrelease
cat Release | gpg --default-key jimmydevine -abs  --clearsign > InRelease
