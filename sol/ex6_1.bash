#!/bin/bash

while read IP; do
    echo $IP
    ping -t 3 $IP || echo ${IP}: $(date) >> no_ping.log
done < ips

