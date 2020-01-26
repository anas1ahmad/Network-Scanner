#!/bin/bash
action()
{
	read -p "enter port no : " port1
	echo
 	exec 4<>/dev/tcp/$host/$port1
	echo -e "GET / HTTP/1.1\r\nhost: 192.168.153.132\r\nConnection: close\r\n\r\n" >&4 
	timeout 5s cat <&4 | grep -f dict.txt
	echo	
}
read -p "Enter IP : " host
for port in {1..1000}
do
  (echo >/dev/tcp/$host/$port) >/dev/null 2>&1 && echo "$port open tcp" | tee -a /root/Desktop/tcp.txt
done
while read -p "Do you want details of particluar port [Y/N] : " input;
do
  if [ $input == "Y" ];
  then
  	action
  else
	exit 
  fi
done
rm /root/Desktop/tcp.txt
