# Network-Scanner
Bash scripts created to do basic scan in a network

I have created multiple bash scripts for different operations for network scanning.
These are the scriptes:

1. Full_scan.sh : Bash script to scan all open ports and grab the banner of a particular port entered by user (if possible) to determine the service running from the list of services in dict.txt file. 
2. broadcast_ping.sh : Bash script to resolve IPs given in cidr form (eg. 192.168.0.0/24 ) into a list of IPs and check which IP is live. 
3. Port_scan.sh :This is a bash script to scan ports opened on a remote machine. This scripts scan ports in range 1 to 1000. 
4. nc_scan.sh : Bash script to do basic port scanning using netcat and print the required details
5. os.sh : Bash script to check OS of local machine. 

A  dict.txt file containing a list of services is used to match with the scanned service.
