#!/bin/bash

# Change directory to JBoss bin directory
cd /mnt/d/WSLUBUNTU/jboss-eap-7.4/bin 

# Execute the shutdown script
./jboss-cli.sh --connect --command=:shutdown
