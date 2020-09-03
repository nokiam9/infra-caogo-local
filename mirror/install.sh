# 清理yum缓存
yum clean all
yum makecache

# 从外网下载rpm安装包
reposyn -r base -p /data/centos
reposyn -r extras -p /data/centos
reposyn -r updates -p /data/centos
reposyn -r centosplus -p /data/centos

reposync -r epel -p /data/epel
reposync -r docker-ce -p /data/docker-ce
reposync -r kubernetes -p /data/kubernetes