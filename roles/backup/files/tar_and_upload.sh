#!/bin/bash

DATE=`date +"%m-%d-%y"`
$GS_BUCKET=$1

tar -cvzf tux-sudo-$DATE.tar -C /var/lib/docker/volumes/tuxsudo_ghost-data/_data .

gsutil cp tux-sudo-$DATE.tar $1/

rm tux-sudo-$DATE.tar
