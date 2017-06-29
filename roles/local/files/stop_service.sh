#!/bin/sh
export LANG="en_US.UTF-8"
JAVA_HOME=/ywkj/jdk1.8.0_60
JAVA_BIN=$JAVA_HOME/bin
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
PATH=$JAVA_HOME:$JAVA_BIN:$CLASSPATH:$PATH
export JAVA_HOME JAVA_BIN CLASSPATH PATH
pid=`jps -l | grep 'com.pharmaking.groundhog.product.server.app.StartProductAppServer' | awk '{print $1}'`
echo 'kill the old pid is ------------------>' ${pid}
kill -9 ${pid}
pidnum=`jps -l | grep 'com.pharmaking.groundhog.product.server.app.StartProductAppServer' | awk '{print $1}'|wc -w`
if [ "${pidnum}" -eq 0 ];then
  echo '---------------------'
  echo 'groundhog-server is stopped'
  echo '---------------------'
fi
