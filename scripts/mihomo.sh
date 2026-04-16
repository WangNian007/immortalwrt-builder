#!/bin/bash

echo "Start Builder Patch !"
echo "Current Path: $PWD"

cd $GITHUB_WORKSPACE/$VENDOR-imagebuilder-$VERSION-x86-64.Linux-x86_64 || exit


# 下载 mihomo 二进制文件

url=$(curl -s https://api.github.com/repos/MetaCubeX/mihomo/releases/latest | jq -r '.assets[] | select(.name | test("mihomo-linux-amd64-v2-go123")) | .browser_download_url') 

wget "${url}"


gunzip mihomo-linux-amd64-v2-*.gz


#openclash 内核
mkdir -p files/etc/openclash/core
cp mihomo-linux-amd64-v2-* files/etc/openclash/core/clash_mate
chmod 777 files/etc/openclash/core/clash_mate

#nikki 内核
mkdir -p files/usr/bin
cp mihomo-linux-amd64-v2-* files/usr/bin/mihomo
chmod 777 files/usr/bin/mihomo


exit 0
