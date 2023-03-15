#!/bin/bash
read -p '请输入路径:' path
if [ -d $path ]; 
then
echo "文件个数为：`ls -l  $path | grep "^-" | wc -l`"
else
echo "请输入正确的路径"
fi
