#!/bin/sh
## starts up or shuts down local bash server 
## takes one argument start or stop
echo "$1ing local spark server";
start_or_shutodwn="$1"
if [ "start" == "$start_or_shutodwn" ] ;
then
    cd $SPARK_HOME
    ./sbin/start-master.sh
    ./sbin/start-worker.sh spark://ubuntu1:7077
else
    cd $SPARK_HOME
    ./sbin/stop-master.sh
    ./sbin/stop-worker.sh spark://ubuntu1:7077
fi
