#/bin/bash
/sbin/ipvsadm > /dev/null 2>&1
ipaddr_first="192.168.206.131";
ipaddr_second="192.168.206.129";
#调度器

ipvip="192.168.206.200";
ifconfig eth0:0 $ipvip netmask 255.255.255.0 up
ipvsadm -C 
ipvsadm --set 30 5 60 
#ipvsadm -A -t $ipvip:80 -s wrr -p 20
ipvsadm -A -t $ipvip:80 -s rr
ipvsadm -a -t $ipvip:80 -r $ipaddr_first:80 -g -w 1
ipvsadm -a -t $ipvip:80 -r $ipaddr_second:80 -g -w 1
ipvsadm -L -n


