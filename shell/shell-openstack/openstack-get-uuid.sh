#!/bin/bash
source  /root/admin-openrc.sh && source /root/kolla/bin/activate
openstack server list | awk '{print $2}' > delete-all.txt
