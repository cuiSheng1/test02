

--解决办法：
--
--使用rpm命令删除当前系统上的yum命令：
--	[root@mariadb ~]# rpm -aq|grep yum|xargs rpm -e --nodeps 
--
--查看系统版本：
--	[root@mariadb ~]# uname -a
--	Linux mariadb 3.10.0-229.el7.x86_64 #1 SMP Thu Jan 29 18:37:38 EST 2015 x86_64 x86_64 x86_64 GNU/Linux
--
--	[root@mariadb ~]# cat /etc/redhat-release 
--	Red Hat Enterprise Linux Server release 7.1 (Maipo)
--
--到如下路径下载对应系统版本的yum安装包：
--	http://mirrors.aliyun.com/centos/7/os/x86_64/Packages/ 
--
--下载rpm包：
--	[root@mariadb ~]# wget http://mirrors.aliyun.com/centos/7/os/x86_64/Packages/yum-3.4.3-132.el7.centos.0.1.noarch.rpm
--	[root@mariadb ~]# wget http://mirrors.aliyun.com/centos/7/os/x86_64/Packages/yum-metadata-parser-1.1.4-10.el7.x86_64.rpm
--	[root@mariadb ~]# wget http://mirrors.aliyun.com/centos/7/os/x86_64/Packages/yum-plugin-fastestmirror-1.1.31-34.el7.noarch.rpm
--	[root@mariadb ~]# wget http://mirrors.aliyun.com/centos/7/os/x86_64/Packages/python-urlgrabber-3.10-9.el7.noarch.rpm
--	[root@mariadb ~]# wget http://mirrors.aliyun.com/centos/7/os/x86_64/Packages/rpm-4.11.3-40.el7.x86_64.rpm
--
--部分rpm包升级处理：
--	rpm -Uvh rpm-4.11.3-40.el7.x86_64.rpm --nodeps
--	rpm -Uvh python-urlgrabber-3.10-9.el7.noarch.rpm --nodeps
--
--安装：
--	[root@localhost /etc/yum.repos.d]# ls |grep yum |xargs rpm -ivh 
--	warning: yum-3.4.3-163.el7.centos.noarch.rpm: Header V3 RSA/SHA256 Signature, key ID f4a80eb5: NOKEY
--	Preparing...                          ################################# [100%]
--	Updating / installing...
--	   1:yum-metadata-parser-1.1.4-10.el7 ################################# [ 33%]
--	   2:yum-plugin-fastestmirror-1.1.31-5################################# [ 67%]
--	   3:yum-3.4.3-163.el7.centos         ################################# [100%]
--
----------------[-报错解决-]----------------------
--查看当前系统python版本
--	python -V
--	Python 2.7.14
--查看python安装路径使用：whereis python
--	python: /usr/bin/python2.4 /usr/bin/python /usr/lib/python2.4 /usr/lib/python2.6 /usr/lib/python2.7 /usr/include/python2.4 /usr/include/python2.6 /usr/share/man/man1/python.1.gz
--查看 ：which yum
--编辑:vi /usr/bin/yum
--	/usr/bin/yum 默认为#!/usr/bin/python ，上图划线部分我已经修改为：#!/usr/bin/python2.4 保存即可
--------------------------------------------------
--wget -O /etc/yum.repos.d/Centos-7.repo http://mirrors.aliyun.com/repo/Centos-7.repo



----------------[-rpm/yum-]------------------
--yum install/yum -y install
--yum reinstall
--yum remove
--yum update
--yum check-update
--yum provides 关键字 (查看指定特性[可以是文件]由那个程序包提供)
--yum clean all (清除缓存)
--yum makecache (构建缓存)
--yum search    (模糊搜索)
--yum history
--yum history info 6
--yum history undo 6
--yum deplist   (查看指定包所依赖的capabilities)
--------------------------
--配置文件路径：
--/etc/yum.repos.d/*.repo
--------------------------
--rpm -q        (检查是否安装)
---------------------------------------------



