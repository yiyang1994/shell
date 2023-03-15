#!/bin/bash
num=$[RANDOM%100+1]

while :
do 
   read -p "计算机生成一个1-100的随机数，你猜一下：" cai
     if [ $cai -eq $num  ]
     then
           echo "恭喜你猜对了"
           exit
        elif [ $cai -gt $num ]
        then
           echo "猜大了"
          else
             echo “猜小了”
     fi
done
