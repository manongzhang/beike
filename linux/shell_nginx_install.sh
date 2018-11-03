#/bin/bash
tar -xf /tmp/nginx-1.8.1.tar.gz -C /tmp/pear
cd /tmp/pear/nginx-1.8.1
./configure --prefix=/tmp/nginx > /dev/null 2>&1
nginx_path=/tmp/nginx/sbin/nginx

if [ $? -eq 0 ]
then
    echo "configure is success";
    `make && make install` > /dev/null 2>&1
else
    echo "configure is error";
fi

`$nginx_path`
 sum=`ps aux | grep nginx  | grep master | wc -l`
if [ $sum -ge 1 ]
then
    echo "nginx is start";
else
    echo "nginx is not start";
fi
