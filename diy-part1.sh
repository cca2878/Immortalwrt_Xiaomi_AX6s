#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
rm -rf feeds.conf.default

# Add a feed source
echo 'src-git packages https://github.com/CCA2878/immortalwrt-packages.git;openwrt-18.06' >>feeds.conf.default
echo 'src-git luci https://github.com/CCA2878/immortalwrt-luci.git;openwrt-18.06-k5.4' >>feeds.conf.default
echo 'src-git routing https://github.com/openwrt/routing.git' >>feeds.conf.default
echo 'src-git telephony https://github.com/openwrt/telephony.git' >>feeds.conf.default
