#!/bin/bash

## Comment the following line out to let the script check if the server port
## is occupied and kill the occupying proccess if required
##
## You may have to enable the prepare.sh script in your multicraft.conf by
## having the following setting in the [useragent] section:
## userAgentSuperuserPrepare = prepare.sh
exit 0

if [ ! "`which lsof`" = "" ]; then

    #Convert IP to a format accepted by lsof
    if [ "$IP" = "0.0.0.0" ]; then
        IP=""
    elif [ ! "$IP" = "" ]; then
        IP="@$IP"
    fi

    #Check for running processes on the same IP/port
    PID="`lsof -t -i$IP:$PORT`"
    if [ ! "$PID" = "" ]; then
        echo "Warning: Found running process using the same IP/port ($PID)"
        EXE="`file /proc/$PID/exe`"
        if [ ! "`echo $EXE | grep java`" = "" ]; then
            echo "Seems to be a Java process, killing $PID"
            kill -9 "$PID"
        else
            echo "Not a Java process, not killing $PID ($EXE)"
        fi
    fi
fi
