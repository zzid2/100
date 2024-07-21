#!/bin/bash
lede_path=$(pwd)                      ## 目录变量=Lede源码目录；用于githun编译命令
cd $lede_path

# 修改主机名（不能纯数字或者中文）
sed -i '/uci commit system/i\uci set system.@system[0].hostname='OpenWrt_x86oem'' package/lean/default-settings/files/zzz-default-settings


