# !/bin/bash

target_num=$1

# 判读用户是否有输入
# if [ -n "$target_num" ] ; then
if [ "$target_num" = "1" ]; then
    docker inspect --format='{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)
elif [ "$target_num" = "2" ] ; then
    docker container stats
    echo "Container ID UNFOUND!"
elif [ "$target_num" = "3" ] ; then
    echo "Container ID UNFOUND!"
else
    echo "*** 提示:"
    echo "*** 容器IP:\n\t"${0##*/}" 1"
    echo "*** 容器使用状态:\n\t"${0##*/}" 2"
    exit 1
fi
# fi
