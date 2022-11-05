#!/bin/sh

while true

do

ps -ef | grep /root/srv | grep -v "grep"

if [ "$?" -eq 1 ]

then

nohup /root/srv > test.log 2>&1 &

echo "process has been restarted!"

else

echo "process already started!"

fi

sleep 10

done