#!/bin/bash

echo "Start Builder Patch !"
echo "Current Path: $PWD"

cd $GITHUB_WORKSPACE/$VENDOR-imagebuilder-$VERSION-x86-64.Linux-x86_64 || exit


# 下载 mihomo 二进制文件
url=$(curl -s https://api.github.com/repos/MetaCubeX/mihomo/releases/latest | jq -r '.assets[] | select(.name | test("mihomo-linux-amd64-v2-go123")) | .browser_download_url') 

wget "${url}"


gunzip mihomo-linux-amd64-v2-*.gz



#文件写入根目录
cp mihomo-linux-amd64-v2-* files/

exit 0
