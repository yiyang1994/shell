#!/usr/bin/python3
# coding=utf-8
import psutil
import datetime
import os
 
def linux_monitor():
    # cpu的使用率
    cup_per = psutil.cpu_percent(interval=1)
    # 内存使用率
    mem_per = psutil.virtual_memory().percent
    # 磁盘使用率
    disk_per = psutil.disk_usage('/').percent
    # 网络使用情况  收发多少数据 net.bytes_recv、net.bytes_sent
    net = psutil.net_io_counters()
    # 获取当前系统时间
    current_time = datetime.datetime.now().strftime("%F %T")  
    # 系统负载显示
    load_average = os.getloadavg()
    # 拼接显示
    str = ""
    str+= "|---------time--------|---cpu----|----memory----|----disk----|-----------------net-------------------|-----load_average----|\n"
    str+= "| %s |   %s%%  |    %s%%     |    %s%%   | recv:%.2fMB  sent:%.2fMB |  %s  |\n" \
              % (current_time, cup_per, mem_per, disk_per, net.bytes_recv/1024/1024, net.bytes_sent/1024/1024,load_average)
    print(str)
linux_monitor()

#memory
import psutil
def bytes2human(n):
     symbols = ('K','M','G','T','P','E','Z','Y')
     prefix = {}
     for i,s in enumerate(symbols):
         prefix[s] = 1 << (i + 1) * 10
     for s in reversed(symbols):
         if n >= prefix[s]:
             value = float(n) / prefix[s]
             return '%.1f%s' % (value,s)
     return '%sB' % n
# 获取当前系统时间
current_time_now = datetime.datetime.now().strftime("%F %T")
str1 = ""
str1+= "|----memory_total----|-----memory_used----|-----memory_free----|---------time-------|\n"
str1+= "|{:^20s}|{:^20s}|{:^20s}|{:^20s}|\n".format \
          (bytes2human(psutil.virtual_memory().total), bytes2human(psutil.virtual_memory().used), bytes2human(psutil.virtual_memory().free),current_time_now)
print(str1)

 
