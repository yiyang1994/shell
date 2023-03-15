#!/bin/bash
#功能选择
while [ 1 ]
do
cat <<EOF
******************************************************
* 1.算出你输入的目录下有几个文件 eg:/data            *
* 2.猜字游戏                                         *
*                                                    *
******************************************************
EOF

echo '输入你想要的功能'
read key
case $key in 
1 )
clear
sh 1.sh
;;
2 )
clear 
sh 2.sh
;;
q )
clear
echo '---感谢使用---程序退出---'
break
;;
esac
done
