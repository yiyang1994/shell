
#!/bin/bash
 
 
for i in $(seq 1 400)
do
{
    echo `source  /root/admin-openrc.sh && source /root/kolla/bin/activate && openstack server create  --flavor  1Core_1GRam_1GDisk_4Interface  --image  5_cirros_10_10   --nic net-id=6cf5d451-50e1-46e5-ac41-d0b56845f9f2  --nic net-id=8d4ad834-89bb-4caf-8f3f-ff7baed9a58d   $i`
}&
done
 
 

