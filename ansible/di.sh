#!/bin/bash
yc compute instances list | tail -n +4 | head -n -2 | awk -F '|' '{print "["$3"]\n" "ansible_host="$6}'| tr -d '[:blank:]'
python di_python.py
