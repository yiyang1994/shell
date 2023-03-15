#!/bin/bash
for line in `cat delete-all.txt`
do
{
    echo `source  /root/admin-openrc.sh && source /root/kolla/bin/activate  && openstack server delete ${line}`
}&
done
