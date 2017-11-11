#!/usr/bin/env bash

sshfs root@ssh:/root /var/mount/share -o sshfs_debug,noatime,allow_other,auto_cache,reconnect,StrictHostKeyChecking=no
ls -al /var/mount/share

while true; do
	echo "Tentative -->"
	mv --verbose /var/mount/share/*.txt /var/mount/destination 2> /dev/null
	sleep 1
done