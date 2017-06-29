#!/bin/bash
process_name=$1
pid=`ps -ef | grep -vE "grep|logstash|app_is_running.sh" | grep $process_name | awk '{print $2}'`
if [ -z "$pid" ];then
    echo "not start"
else
    echo "is running"
fi
