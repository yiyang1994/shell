#!/bin/bash
#总和计算
sum=0
for i in `seq 1 100`
do
   sum=$[sum+i]
done
echo "总和是：$sum"
