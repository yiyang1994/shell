#!/bin/bash
for i in {1..3}
do
        STR1="------------------------------------------------------"
        echo $STR1

        time2=$(date "+%Y-%m-%d %H:%M:%S")
        echo $time2

        # 获取CPU1分钟前到现在的负载平均值
        cpu_load_1min=`uptime | awk '{print $10}' | cut -f 1 -d ','`
        echo "CPU 1分钟前到现在的负载平均值："$cpu_load_1min

        # 获取CPU5分钟前到现在的负载平均值
        cpu_load_5min=`uptime | awk '{print $11}' | cut -f 1 -d ','`
        echo "CPU 5分钟前到现在的负载平均值："$cpu_load_5min

        # 获取CPU15分钟前到现在的负载平均值
        cpu_load_15min=`uptime | awk '{print $12}' | cut -f 1 -d ','`
        echo "CPU 15分钟前到现在的负载平均值："$cpu_load_15min


        # 获取物理内存总量
        mem_total=`free -h | grep Mem | awk '{print $2}'`
        echo "物理内存总量："$mem_total

        # 获取操作系统已使用内存总量
        mem_sys_used=`free -h | grep Mem | awk '{print $3}'`
        echo "已使用内存总量(操作系统)："$mem_sys_used

        # 获取操作系统未使用内存总量
        mem_sys_free=`free -h | grep Mem | awk '{print $4}'`
        echo "剩余内存总量(操作系统)："$mem_sys_free


        a=`df -h | grep /dev/mapper/centos-root | awk '{print $3 }'`
        echo "已使用磁盘："$a

        b=`df -h | grep /dev/mapper/centos-root | awk '{print $5}'`
        echo "已使用磁盘占比："$b

        sleep 3s

done
