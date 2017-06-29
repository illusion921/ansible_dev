#!/bin/bash
java_home=$1
process_name=$2

thepid=`$java_home/bin/jps -l | grep $process_name | awk '{print $1}'`

if [ $thepid > 0 ]
  then
    echo "kill old pid $thepid"
    kill -9 $thepid
else
  echo "$process_name not start"
fi
