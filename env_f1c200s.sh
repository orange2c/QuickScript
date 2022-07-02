#!/bin/bash
echo "功能:安装at91系列mpu的编译环境"
echo "1) 会使用 apt install 安装多个软件"
echo "2) 会在当前路径下clone多个项目(几个G)"
read -p '按下回车键开始 (按ctrl+c退出)'

apt-get update
echo "1.安装所需软件"
apt-get install gcc g++ make python git  -y
apt-get install net-tools ssh sed  binutils build-essential apt-utils ncurses-base libncurses5-dev  bison flex nfs-kernel-server  chrpath gawk texinfo minicom nano cvs file cpio w3m asciidoc dblatex asciidoc-dblatex graphviz python-matplotlib -y

echo "2.安装依赖库"
apt-get install diffstat libsdl1.2-dev libc6-i386 lib32stdc++6 lib32z1 -y
apt-get install libssl-dev libfdt-dev lib32ncurses5  -y
echo "3.安装交叉编译器"
apt-get install gcc-arm-linux-gnueabi gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf -y


echo "安装下载工具"
git clone https://github.com/linux-sunxi/sunxi-tools.git
cd sunxi-tools
make
make install
cd ..

echo "下载uboot"
git clone https://github.com/Lichee-Pi/u-boot.git