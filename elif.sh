#! /bin/bash

read -p "enter option: " option
if [[ $option == start ]]
then 
    echo "start docker"
    service docker start
elif [[ $option == stop ]]
then
    echo "stop docker"
    service docker stop
elif [[ $option == restart ]]
then
    echo "restart docker"
    service docker restart
elif [[ $option == version ]]
then
    version=$(docker -v | cut -d " " -f 3 | cut -d "-" -f 1)
    echo "version of docker: $version"
else
    echo "options are invalid"
fi
