# !/bin/bash

target_num=$1

# 判读用户是否有输入
# if [ -n "$target_num" ] ; then
if [ "$target_num" = "1" ]; then
    docker inspect --format='{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)
elif [ "$target_num" = "2" ] ; then
    echo "Container ID UNFOUND!"
elif [ "$target_num" = "3" ] ; then
    echo "Container ID UNFOUND!"
else
    echo "*** 提示:"
    echo "*** 查询当前Docker所有容器IP"$container_name":\n\t"${0##*/}" 1"
    exit 1
fi
# fi
