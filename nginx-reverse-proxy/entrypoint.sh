#!/bin/sh

num_of_proxies=${TOTAL_PROXIES}
if [ -z "${num_of_proxies}" ]
then
  num_of_proxies=0
fi
counter=0
while [[ $counter -lt $num_of_proxies ]]
do
    variablename=PROXY${counter}
    eval proxy_data=\$${variablename}
    port=`echo ${proxy_data} | awk -F\| '{print $1}'`
    host=`echo ${proxy_data} | awk -F\| '{print $2}'`

    cat server.template.conf | sed s/PORT/${port}/g | sed s~HOST~"${host}"~g >> /etc/nginx/nginx.conf
    counter=`expr $counter + 1`
done

echo "}" >> /etc/nginx/nginx.conf

cat /etc/nginx/nginx.conf

nginx -g "daemon off;"