#! /bin/bash

server_name=$(uname -n)
Ip_address=$(ifconfig | awk 'NR==2 { print $2 }')
OS_type=$(uname)
up_time=$(uptime | awk '{print $3}')

echo "S.No    server_name                             Ip_address        OS_type       up_time " > server_info.csv
echo "1     ${server_name}     ${Ip_address}     ${OS_type}   ${up_time}" >> server_info.csv
