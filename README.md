
# install_nginx.sh
使用方法: `sudo bash install_nginx.sh`
		
功能：安装配置文件服务器nginx
1. 使用apt安装nginx
2. 配置为文件服务器,路径为/Ndownload


# env_at91
使用：`sudo bash env_at91.sh`

功能：安装at91系列mpu的镜像编译环境
1. 会使用 apt 安装多个软件，依赖库
2. 会在当前路径下clone多个项目(几个G)


# cmd_down.sh
使用：`sudo bash cmd_down.sh 本机ip地址`

示例：sudo bash cmd_down.sh 175.178.105.49

功能：自创指令down的安装程序（因为服务器内无法获取外网地址，所以需要安装时手动输入）

## down指令
使用：`down 文件名`

示例：down a.txt

功能：将a.txt复制到/Ndownload文件夹下，并输出一串下载链接

使用：`down 目录`

示例：down work/

功能：生成work/的压缩文件，复制到/Ndownload文件夹下，并输出一串下载链接