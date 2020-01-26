
#!/bin/bash
read -p "Enter ip range" ip
prips $ip > /root/Desktop/ips.txt
 >/dev/null 2>&1
cat /root/Desktop/ips.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo " $output is up"   
    fi
done
