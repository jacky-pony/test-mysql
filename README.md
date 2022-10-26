# MySQL Docker 实验环境

## FAQ

### docker mysql 不能输入中文?

进入容器时设置环境变量 `docker exec -it dddf2378853e env LANG=C.UTF-8 /bin/bash`