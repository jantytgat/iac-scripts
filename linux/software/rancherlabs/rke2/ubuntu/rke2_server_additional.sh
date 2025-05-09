#!/bin/sh
echo "########################################################################"
echo "# RANCHER LABS - RKE2 Server                                           #"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


hostname=$1
token=$2
apt-get remove firewalld

sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT=""/GRUB_CMDLINE_LINUX_DEFAULT="systemd.unified_cgroup_hierarchy=0 systemd.legacy_systemd_cgroup_controller"/' /etc/default/grub
update-grub

curl -sfL https://get.rke2.io --output rke2_install.sh
chmod +x rke2_install.sh

INSTALL_RKE2_CHANNEL=stable INSTALL_RK2_TYPE=server ./rke2_install.sh
systemctl enable rke2-server.service

rke2 server \
  --write-kubeconfig-mode "0644" \
  --tls-san "$hostname" \ 
  --server $hostname:9345 \
  --token $token



echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "