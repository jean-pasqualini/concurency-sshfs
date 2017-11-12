#!/usr/bin/env bash

#mount -v -o vers=4,loud nfs:/ /var/mount/share

while true; do
	filepath=/var/mount/share/$(uuidgen).txt
	#touch $filepath
	echo "SEND: $filepath"
	sleep 5
done