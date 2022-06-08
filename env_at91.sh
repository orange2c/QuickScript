#!/bin/bash
echo "本脚本用于在电脑中从零安装microchip的mpu的编译环境"
echo "会在此路径下clone多个项目(几个G),请在合适路径下运行"
echo "如果是国内环境,请先退出去手动更改apt下载源以加快下载速度"
read -p '按下回车键开始(按ctrl+c退出)'


apt-get update
echo "1.安装所需软件"
apt-get install net-tools ssh sed make binutils build-essential apt-utils gcc g++ ncurses-base libncurses5-dev python git bison flex nfs-kernel-server libssl-dev chrpath gawk texinfo minicom nano cvs file cpio w3m asciidoc dblatex asciidoc-dblatex graphviz python-matplotlib -y
echo "2.安装依赖库"
apt-get install diffstat libsdl1.2-dev libc6-i386 lib32stdc++6 lib32z1 -y
echo "3.安装交叉编译器"
apt-get install gcc-arm-linux-gnueabi gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf -y

echo "4.clone项目:bootstrap,一级引导"
git clone https://github.com/linux4sam/at91bootstrap.git

echo "5.clone项目:u-boot,二级引导"
git clone https://github.com/linux4sam/u-boot-at91.git

echo "6.clone项目:linux-at91,linux内核"
git clone https://github.com/linux4sam/linux-at91.git


echo "7.clone项目:buildroot,一站式编译工具"
git clone https://github.com/buildroot/buildroot.git

echo "8.clone项目:buildroot-external-microchip,mchp官方编写的buildroot配置"
git clone https://github.com/linux4sam/buildroot-external-microchip.git
