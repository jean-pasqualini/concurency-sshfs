#!/usr/bin/env bash

echo "Attente 10 secondes..."

sleep 10

echo "Démarrage send file"

mount -v nfs:/nfsshare /var/mount/share

while true; do
	filepath=/var/mount/share/$(uuidgen).txt
	touch $filepath
	echo "SEND: $filepath"
	sleep 5
done