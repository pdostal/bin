#!/bin/bash
echo "Starting: " `date`
for ((;;))
do
	ssh -o ExitOnForwardFailure=yes -o TCPKeepAlive=yes -o ServerAliveCountMax=2 -o ServerAliveInterval=10 -N -L 1465:localhost:465 -L 1080:localhost:1080 -L 3000:localhost:3000 -L 4000:localhost:4000 hom
	echo "Restarting: " `date`
	sleep 1
done
echo "Exitting: " `date`
