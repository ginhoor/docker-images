# !/bin/bash

image_name="ginhoor/py3"

target_num=$1
if [ "$target_num" = "1" ]; then
    docker pull $image_name:latest
    echo "pull "$image_name"latest"
elif [ "$target_num" = "2" ] ; then
    docker pull $image_name:TaobaoScrapy
    echo "pull "$image_name"TaobaoScrapy"
elif [ "$target_num" = "3" ] ; then
    docker pull $image_name:TaobaoScrapy
    echo "pull "$image_name"TaobaoScrapy"    
else
    echo "*** 提示:"
    echo "*** 拉取"$image_name": latest:\n\t"${0##*/}" 1"
    echo "*** 拉取"$image_name": TaobaoScrapy:\n\t"${0##*/}" 2"
    echo "*** 拉取"$image_name": TaobaoScrapy:\n\t"${0##*/}" 3"
    exit 1
fi
