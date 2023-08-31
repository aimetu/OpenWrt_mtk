#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 默认网关ip地址修改
# sed -i 's/192.168.1.1/192.168.188.1/g' package/base-files/files/bin/config_generate

# 更换 5.4 内核为 5.10 内核
# sed -i "s/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g" target/linux/ramips/Makefile

# 删除 openwrt 自带 argon 主题
# rm -rf  feeds/luci/themes/luci-theme-argon

# 添加 jerrykuku 新版 argon 主题
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# 取消 bootstrap 为默认主题
# sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 将 argon（design） 设置为默认主题
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
# sed -i 's/luci-theme-bootstrap/luci-theme-design/g' ./feeds/luci/collections/luci/Makefile

# 添加 openappfilter 应用过滤插件
# git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

# 移除不用软件包（adguardhome）
# rm -rf feeds/packages/net/adguardhome
