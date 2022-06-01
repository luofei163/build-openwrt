
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo "src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages" >> feeds.conf.default
echo "src-git PWluci https://github.com/xiaorouji/openwrt-passwall.git;luci" >> feeds.conf.default

echo 'src-git unblockneteasemusic https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git' >>feeds.conf.default

# Remove old theme 
rm -rf package/lean/luci-theme-argon

# Download argon theme
git clone -b v2.2.9.4 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
