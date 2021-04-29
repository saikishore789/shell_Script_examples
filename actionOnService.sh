#! /bin/bash

serviceName=$1
action=$2
systemctl $action ${serviceName}
