#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - GENERIC - Check if apt is running"
echo "########################################################################"


inProgress=true
while [ $inProgress = true ]
do
    output=$(ps aux | grep apt | grep -i dpkg)
    
    if [ "$output" ]; then
        echo "APT is running, sleep for 10 seconds"
        sleep 10s

        continue
    fi
    
    inProgress=false
done
echo "Done."
sleep 5s

echo "########################################################################"
echo " "