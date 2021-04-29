#! /bin/bash
TH_L=300
free_ram=$(free -mt | grep -E "Total" | awk '{print $4}')

if [[ $free_ram -lt TH_L ]]
then
    echo -e "server is running with low RAM size\nAvailable RAM size: $free_ram"
fi
