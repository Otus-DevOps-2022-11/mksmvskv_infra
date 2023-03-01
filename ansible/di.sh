#!/bin/bash
yc compute instances list | grep reddit | awk '{gsub("reddit-", "", $4); print "["$4"]\n"$4"server"" ""ansible_host="$10}' > inventory
ansible-inventory -i inventory --list > inventory.json
