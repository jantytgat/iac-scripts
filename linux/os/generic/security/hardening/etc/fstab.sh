#!/bin/sh
echo "### configure /etc/fstab"
echo 'tmpfs /run/shm tmpfs defaults,noexec,nosuid 0 0' >> /etc/fstab
