#!/bin/bash
lede_path=$(pwd)                         ## 赋于成变量= 当前执行目录，lede源码目录；
cd $lede_path                            ## 进入（Lede目录）内并执行操作；

# 修改主机名（不能纯数字或者中文）
sed -i '/uci commit system/i\uci set system.@system[0].hostname='G-DOCK'' package/lean/default-settings/files/zzz-default-settings

# 修改wifi名称
sed -i 's/OpenWrt/G-DOCK/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh