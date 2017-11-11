#!/usr/bin/env bash

sshfs root@ssh:/root /var/mount/share -o sshfs_debug,noatime,allow_other,auto_cache,reconnect,StrictHostKeyChecking=no

while true; do
	filepath=/var/mount/share/$(uuidgen).txt
	touch $filepath
	echo "SEND: $filepath"
	sleep 5
done