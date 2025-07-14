#!/bin/bash

echo "Start Clash Core Download !"
echo "Current Path: $PWD"

mkdir -p files/etc/openclash/core
cd files/etc/openclash/core || (echo "Clash core path does not exist! " && exit)

# Clash Dev 已停止更新
#wget https://raw.githubusercontent.com/vernesong/OpenClash/core/master/dev/clash-linux-amd64.tar.gz
#tar -zxvf clash-linux-amd64.tar.gz
#rm -rf clash-linux-amd64.tar.gz
#mv clash clash_dev

# Clash TUN 已停止更新
#VERSION=$(curl -sS https://raw.githubusercontent.com/vernesong/OpenClash/core/dev/core_version | awk 'NR==2')
#wget https://raw.githubusercontent.com/vernesong/OpenClash/core/master/premium/clash-linux-amd64-$VERSION.gz
#gzip -d clash-linux-amd64-$VERSION.gz
#rm -rf clash-linux-amd64-$VERSION.gz
#mv clash-linux-amd64-$VERSION clash_tun

# Clash Meta
wget https://github.com/MetaCubeX/mihomo/releases/download/v1.19.11/mihomo-linux-amd64-v1.19.11.gz
gunzip mihomo-linux-amd64-v1.19.11.gz
mv mihomo-linux-amd64-v1.19.11 clash_meta

# Use clash_meta as default core
mv clash_meta clash
