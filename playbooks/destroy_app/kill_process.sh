#!/bin/bash
process_name=$1
#pid=`ps -ef | grep $process_name | grep -v grep | grep -v logstash | grep -v sh | awk '{print $2}'`
pid=`ps -ef | grep -vE "grep|logstash|kill_process.sh" | grep $process_name | awk '{print $2}'`
if [ -z "$pid" ];then
    echo "$process_name not start"
else
    echo "$process_name pid is $pid"
    kill -9 $pid
fi
