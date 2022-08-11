#! /bin/bash

awk -F "/" '/^\/usr/ {print $NF}' /etc/shells > temp2.txt
cat temp2.txt