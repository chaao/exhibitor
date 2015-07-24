if [ -e server.pid ]
then


        pid=`cat server.pid`

        if [ "$pid" != "" ] && [ "$pid" != "0" ]
        then
                kill -9 $pid
                echo "kill $pid"
                rm -f server.pid

        else
                echo "pid=$pid"
        fi


else

        echo "server.pid not found!"

fi


exit 0
