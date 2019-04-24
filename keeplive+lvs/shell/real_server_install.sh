#/bin/bash
#realserver
ipvip="192.168.206.200";
ifconfig lo:200  $ipvip netmask 255.255.255.255 up
echo "1" > /proc/sys/net/ipv4/conf/lo/arp_ignore 
echo "2" > /proc/sys/net/ipv4/conf/lo/arp_announce 
echo "1" > /proc/sys/net/ipv4/conf/all/arp_ignore
echo "2" > /proc/sys/net/ipv4/conf/all/arp_announce 
