#!/bin/bash
java_home=$1
jar_file_path=$2
service_home=$3
service_user=$4

nohup $java_home/bin/java -jar -Ddubbo.spring.config=appContext.xml -Duser.timezone=Asia/Shanghai -Dfile.encoding=UTF-8 $jar_file_path 1>> $service_home/nohop.out 2>&1 &


#su $service_user -c "nohup $java_home/bin/java -jar -Ddubbo.spring.config=appContext.xml -Duser.timezone=Asia/Shanghai -Dfile.encoding=UTF-8 $jar_file_path 1>> $service_home/nohop.out 2>&1 &"