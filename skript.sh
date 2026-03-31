#!/bin/bash

SOURCE="/mnt/c/Users/david/Test5/"
DEST="backup@192.168.56.101:/srv/backup/"

rsync -avz --progress --delete $SOURCE $DEST