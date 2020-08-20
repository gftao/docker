#!/bin/bash

#启动
#docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql
docker run --name mysql -p 3306:3306 -v $PWD/conf:/etc/mysql/conf.d -v $PWD/logs:/logs -v $PWD/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql

#docker run -p 3306:3306 --name mymysql -v $PWD/conf:/etc/mysql/conf.d -v $PWD/logs:/logs -v $PWD/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.6.26

#进入容器
#docker exec -it mysql bash

#登录mysql
#mysql -u root -p
#ALTER USER 'root'@'localhost' IDENTIFIED BY 'Lzslov123!';

#添加远程登录用户
#CREATE USER 'liaozesong'@'%' IDENTIFIED WITH mysql_native_password BY 'Lzslov123!';
#GRANT ALL PRIVILEGES ON *.* TO 'liaozesong'@'%';

#创建镜像
#当我们从 docker 镜像仓库中下载的镜像不能满足我们的需求时，我们可以通过以下两种方式对镜像进行更改。
#1、从已经创建的容器中更新镜像，并且提交这个镜像
#2、使用 Dockerfile 指令来创建一个新的镜像
#更新镜像
#docker commit -m="hy mysql" -a="gftao" d91058bd85f1 gftao/mysql:v1