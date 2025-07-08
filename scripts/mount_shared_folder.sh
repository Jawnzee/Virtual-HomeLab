#!/bin/bash
sudo mkdir -p /mnt/hgfs
sudo vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other
echo "Shared folder mounted at /mnt/hgfs"