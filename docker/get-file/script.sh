#!/usr/bin/env bash

echo "Attente 10 secondes..."

sleep 10

echo "Démarrage get file"

mount -v nfs:/nfsshare /var/mount/share
ls -al /var/mount/share

while true; do
	echo "Tentative -->"
	mv --verbose /var/mount/share/*.txt /var/mount/destination 2> /dev/null
	sleep 1
done