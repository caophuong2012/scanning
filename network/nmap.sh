#!/bin/bash
for file in $(cat $1); do
    echo $file >> $2
    nmap -r -Pn -F $file >> $2
    echo "\n" >> $2
done
