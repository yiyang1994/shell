#!/bin/bash
for i in `seq 1 8`
do 
  for j in `seq 1 8`
  do
    sum=$[i+j]
  if [ $[sum%2] -eq 0 ];then
    echo -ne "\033[46m \033[0m"
  else 
    echo -ne "\033[47m \033[0m"
  fi
  done
  echo
done 
