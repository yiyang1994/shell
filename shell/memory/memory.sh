#!/bin/bash
file_name=$(date +%Y-%m-%d-%H:%M:%S)
for((i=1;i<=4;i++));
do
echo `python3 memory.py >> tonight1.txt `;
sleep 10m
done
