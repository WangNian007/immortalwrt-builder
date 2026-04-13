#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="generic"

PACKAGES=""

# Argon 主题
PACKAGES="$PACKAGES luci-theme-argon luci-i18n-argon-config-zh-cn"

# 常用系统管理组件

# Diskman 磁盘管理
PACKAGES="$PACKAGES luci-i18n-diskman-zh-cn"



# collectd 统计
PACKAGES="$PACKAGES luci-i18n-statistics-zh-cn collectd-mod-mqtt collectd-mod-conntrack collectd-mod-thermal collectd-mod-uptime collectd-mod-dhcpleases collectd-mod-ping"

# 常用软件服务

# OpenClash 代理
PACKAGES="$PACKAGES luci-app-openclash"

#HomeProxy
PACKAGES="$PACKAGES luci-app-homeproxy luci-i18n-homeproxy-zh-cn"


#DDNS-GO
PACKAGES="$PACKAGES luci-app-ddns-go luci-i18n-ddns-go-zh-cn"
#UPNP
PACKAGES="$PACKAGES luci-app-upnp luci-i18n-upnp-zh-cn"
#IP/MAC绑定
PACKAGES="$PACKAGES luci-app-arpbind luci-i18n-arpbind-zh-cn"

# 宽带监控 Nlbwmon
PACKAGES="$PACKAGES luci-i18n-nlbwmon-zh-cn"

# 界面翻译补全
PACKAGES="$PACKAGES luci-i18n-base-zh-cn luci-i18n-package-manager-zh-cn luci-i18n-firewall-zh-cn"

# 一些其他可能有用的包

# zsh 终端
PACKAGES="$PACKAGES zsh"
# Vim 完整版，带语法高亮
PACKAGES="$PACKAGES vim-fuller"
# X/Y/ZMODEM 文件传输
PACKAGES="$PACKAGES lrzsz"

PACKAGES="$PACKAGES openssh-sftp-server"

# Netdata 系统监控界面
PACKAGES="$PACKAGES netdata luci-app-netdata luci-i18n-netdata-zh-cn"

#自动重启
PACKAGES="$PACKAGES luci-app-autoreboot luci-i18n-autoreboot-zh-cn"

#nikki
#PACKAGES="$PACKAGES nikki luci-app-nikki luci-i18n-nikki-zh-cn"

#bandix
#PACKAGES="$PACKAGES bandix luci-app-bandix luci-i18n-bandix-zh-cn"

# 一些自定义文件
FILES="files"


make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" 
