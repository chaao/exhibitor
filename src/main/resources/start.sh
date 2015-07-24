nohup java -jar exhibitor-1.5.5.jar -c zookeeper --port 2180 --zkconfigconnect 10.5.20.18:2181,10.4.17.71:2181,10.5.20.100:2181 --zkconfigzpath /opt/exhibitor > nohup.out 2>&1 &
sleep 1
jps=`jps -lm | grep exhibitor-1.5.5.jar`
if [ -n "$jps" ]; then
       psid=`echo $jps | awk '{print $1}'`
else
       psid=0
fi

echo $psid > server.pid

exit 0
