#!/bin/bash
read -p "Enter IP : " host
echo
echo "port  state  service"
nc -zv $host 1-65000 2>&1 | grep "(UNKNOWN)" | awk '{print $3," ",$5," ",$4}'
