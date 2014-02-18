#!/bin/bash
echo "Starting: " `date`
for ((;;))
do
	ssh -o ExitOnForwardFailure=yes -o TCPKeepAlive=yes -o ServerAliveCountMax=2 -o ServerAliveInterval=10 -N -L 1465:localhost:465 -L hom
	echo "Restarting: " `date`
	sleep 1
done
echo "Exitting: " `date`
