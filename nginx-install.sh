#!/bin/bash
echo "本脚本用于安装配置nginx为文件服务器，并设置路径为/Ndownload"
read -p '按下回车键开始'

echo "1.安装nginx"
apt-get install nginx -y

echo "2.创建路径 /Ndownload "
mkdir /Ndownload

echo "3.创建配置文件"
cat>/etc/nginx/conf.d/file_server.conf<<EOF
server {
    listen  80;          # 监听端口
    server_name    _; 
    charset utf-8; # 避免中文乱码
    root /Ndownload;    # 文件路径
    location / {
        autoindex on; # 索引
        autoindex_exact_size on; # 显示文件大小
        autoindex_localtime on; # 显示文件时间
    }
}
EOF

rm /etc/nginx/sites-enabled/default
service nginx reload
sudo ufw allow 'Nginx Full'
