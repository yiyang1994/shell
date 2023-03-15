#!/bin/bash
sh /root/shell-openstack/openstack-create-400.sh
sleep 30m
sh /root/shell-openstack/openstack-get-uuid.sh
sleep 5m
sh /root/shell-openstack/openstack-delete-all.sh
sleep 15m

