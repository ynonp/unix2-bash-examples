#!/bin/bash
#
# Read IP addresses from a file called ips and try to ping
# each address in a loop
#
# Log all failed attempts in a file called no_ping.log
#
while read IP; do
    echo $IP
    ping -t 3 $IP || echo ${IP}: $(date) >> no_ping.log
done < ips

