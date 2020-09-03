###参数-n指下载最新软件包，-p指定目录，指定本地的源--repoid（如果不指定就同步本地服务器所有的源）,下载过程比较久
reposync -n --repoid=extras --repoid=updates --repoid=base --repoid=centosplus -p /data/centos
reposync -n --repoid=epel -p /data
reposync -n --repoid=docker-ce -p /data
reposync -n --repoid=kubernetes -p /data

createrepo --update /data/centos/base
createrepo --update /data/centos/extras
createrepo --update /data/centos/updates
createrepo --update /data/centos/centosplus
createrepo --update /data/epel
createrepo --update /data/docker-ce
createrepo --update /data/kubernetes