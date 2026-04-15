#!/bin/bash

echo "Start Builder Patch !"
echo "Current Path: $PWD"

cd $GITHUB_WORKSPACE/$VENDOR-imagebuilder-$VERSION-x86-64.Linux-x86_64 || exit

wget -O "./keys/nikki.pem" "https://nikkinikki.pages.dev/public-key.pem"
echo "https://nikkinikki.pages.dev/openwrt-25.12/x86_64/nikki/packages.adb" >> ./repositories

mkdir -p "files/etc/nikki/profiles"
wget -O "files/etc/nikki/profiles/config.yaml" "https://raw.githubusercontent.com/WangNian007/clash_rlues/refs/heads/master/mihomo/config.yaml"