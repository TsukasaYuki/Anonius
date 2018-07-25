mkdir Linux ; cd Linux
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.18.116/linux-headers-3.18.116-0318116-generic_3.18.116-0318116.201807221231_amd64.deb --no-check-certificate
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.18.116/linux-image-3.18.116-0318116-generic_3.18.116-0318116.201807221231_amd64.deb --no-check-certificate
wget http://launchpadlibrarian.net/247729175/module-init-tools_22-1ubuntu4_all.deb
dpkg -i --force-hold --force-depends *.deb
cd ~ ; rm Linux -rf
dpkg -P linux-image-4.9.0-3-amd64 linux-image-4.9.0-4-amd64 linux-image-4.9.0-6-amd64 linux-image-4.15.0-23-generic linux-image-4.15.0-20-generic
apt -y --fix-broken install
apt -y remove linux-image-4.9 
apt -y remove linux-image-4.15 
apt -y remove linux-image-4.9.0-6-amd64 
apt -y remove linux-image-4.9.0-3-amd64 
apt -y remove linux-image-4.9.0-4-amd64
dpkg -P linux-image-4.9.0-3-amd64 linux-image-4.9.0-4-amd64 linux-image-4.9.0-6-amd64 linux-image-4.15.0-23-generic linux-image-4.15.0-20-generic
rm /root/qosnet.sh ;dpkg -l|grep linux-image | awk '{print $2}'
apt -y autoremove
update-grub
rm *.deb
echo "linux-image-3.18.116-0318116-generic hold" | dpkg --set-selections
apt-mark hold linux-image-3.18.116-0318116-generic
reboot
