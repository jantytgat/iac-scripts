#!/bin/sh
echo "### check if apt is running"
inProgress=true
while [ $inProgress = true ]
do
    output=$(ps aux | grep apt-get | grep -i dpkg)
    
    if [ "$output" ]; then
        echo "### --> apt-get is running, sleep for 10 seconds"
        sleep 10s

        continue
    fi
    
    inProgress=false
done
sleep 5s
echo "### --> DONE <--"