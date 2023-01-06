#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - GENERIC - Check if apt-get is running"
echo "########################################################################"


inProgress=true
while [ $inProgress = true ]
do
    output=$(ps aux | grep apt-get | grep -i dpkg)
    
    if [ "$output" ]; then
        echo "apt-get is running, sleep for 10 seconds"
        sleep 10s

        continue
    fi
    
    inProgress=false
done
echo "Done."
sleep 5s

echo "########################################################################"
echo " "