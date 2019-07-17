#!/bin/bash

version=$1

if [ ${#version} -eq 0 ];then 
    version="latest"
fi

docker build  --rm -t ballo72/nginx .
docker run -d --rm --name n1 -p 8888:80 ballo72/nginx
curl http://192.168.99.101:8888
docker stop n1


read  -p "Push OK? (Y/n) " yn
if [ $yn == "n" ]; then
    echo "Push Cancel.."
else
    docker login
    docker push nowage/nginx:$version    
fi