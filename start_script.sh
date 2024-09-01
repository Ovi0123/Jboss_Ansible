#!/bin/bash

# Change directory to JBoss bin directory
cd /mnt/d/WSLUBUNTU/jboss-eap-7.4/bin 

# Execute the startup script
#nohup ./standalone.sh -b 0.0.0.0 > /mnt/d/WSLUBUNTU/jboss-eap-7.4/standalone/log/server.log &
./startup.sh &
