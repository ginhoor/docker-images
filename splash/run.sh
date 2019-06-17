
# !/bin/bash

function get_container_id()
{
    contianers=$(docker container ls)
    results=(${contianers// / })
    
    container_name=$1
    echo $container_name Finding... 
    
    num=${#results[@]}
    for ((i=1;i<=num;i++))
    do
        item=${results[$i]}
        if [ "$item" == "$container_name" ] ; then
            container_id=${results[$i-1]}
        fi
    done
}

container_name="scrapinghub/splash"

# read parameter
# sleep 0.25
# target_num="$parameter"

target_num=$1

# 判读用户是否有输入
# if [ -n "$target_num" ] ; then
if [ "$target_num" = "1" ]; then
    docker run -d -p 8050:8050 --memory=2G --restart=always $container_name --maxrss 1800 –-name=$container_name
    echo "start "$container_name
elif [ "$target_num" = "2" ] ; then

    get_container_id $container_name
    if [ -z "$container_id" ]
    then
        echo "Container ID UNFOUND!"
    else 
        docker rm -f $container_id
        echo "stop "$container_name $container_id
    fi
elif [ "$target_num" = "3" ] ; then
    get_container_id $container_name
    if [ -z "$container_id" ]
    then
        echo "Container ID UNFOUND!"
    else 
        docker restart $container_id
        echo "restart "$container_name $container_id
    fi   
else
    echo "*** 提示:"
    echo "*** 运行"$container_name":\n\t"${0##*/}" 1"
    echo "*** 关闭"$container_name":\n\t"${0##*/}" 2"
    echo "*** 重启"$container_name":\n\t"${0##*/}" 3"
    exit 1
fi
# fi
