#!/bin/bash
# 内存使用率
tm=`free -m | awk 'NR==2 {print $2}'`
um=`free -m | awk 'NR==2 {print $3}'`
fm=`free -m | awk 'NR==2 {print $4}'`
load=`uptime | awk '{print $10,$11,$12}'`
cpu=`top -b -n 1 | grep Cpu | awk '{print $4}'`
precent_um=`echo "scale=2; 100 * $um / $tm " | bc`
now_time=`date +"%Y-%m-%d %H:%M:%d"`
disk=`df / | awk 'NR==2 {print $5}'`

if [  `echo "$precent_um>50.00" |bc` -eq 1  ];
     then
     precent_um1=`echo -e "\033[31m ${precent_um}% \033[0m"`
     cat <<EOF
|---------time--------|---cpu----|----memory----|----disk----|-----load_average----|
| $now_time |   ${cpu}%   |   ${precent_um1}   |    $disk     | ($load)  |

|----memory_total------|-----memory_used----|-----memory_free----|---------time-------|
|         ${tm}M        |        ${um}M       |         ${fm}M       |2023-03-14 13:44:03 |
EOF
     else
     cat <<EOF
|---------time--------|---cpu----|----memory----|----disk----|-----------------net-------------------|-----load_average----|
| $now_time |   ${cpu}%   |    ${precent_um}%    |    $disk    | recv:160806.45MB  sent:124311.93MB |  ($load)  |

|----memory_total------|-----memory_used----|-----memory_free----|---------time-------|
|         ${tm}M        |        ${um}M       |         ${fm}M       |2023-03-14 13:44:03 |
EOF
fi
