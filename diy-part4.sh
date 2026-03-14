#!/bin/bash
cd openwrt || { echo "openwrt 目录不存在"; exit 1; }
rm -f target/linux/generic/backport-6.12/791-v7.0-net-phy-realtek-add-rtl822x-driver.patch
rm -f target/linux/generic/backport-6.12/792-v7.0-net-phy-realtek-add-rtl8125b-support.patch
rm -f target/linux/generic/backport-6.12/793-v7.0-net-phy-realtek-fix-in-band-capabilities-for-2.5G-PH.patch
rm -f target/linux/generic/backport-6.12/794-v7.0-net-phy-realtek-fix-led-blinking.patch
# turboacc
# curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh --no-sfe
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh

# mode
echo 'src-git QModem https://github.com/FUjr/QModem' >> feeds.conf.default

# OpenClash
git clone --depth 1 https://github.com/vernesong/OpenClash.git OpenClash


