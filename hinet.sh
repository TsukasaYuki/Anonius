mkdir Linux ; cd Linux
apt -y remove linux-image-4.9* linux-image-4.15* linux-image-4.9.0-6-amd64 linux-image-4.9.0-3-amd64 linux-image-4.9.0-4-amd64
dpkg -P linux-image-4.9.0-3-amd64 linux-image-4.9.0-4-amd64 linux-image-4.9.0-6-amd64 linux-image-4.15.0-23-generic linux-image-4.15.0-20-generic
apt -y --fix-broken install
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.52/linux-headers-4.1.52-040152-generic_4.1.52-040152.201805290846_amd64.deb --no-check-certificate
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.52/linux-image-4.1.52-040152-generic_4.1.52-040152.201805290846_amd64.deb --no-check-certificate
dpkg -i --force-hold --force-depends *.deb
cd ~ ; rm Linux -rf
update-grub
apt -y remove linux-image-4.9* linux-image-4.15* linux-image-4.9.0-6-amd64 linux-image-4.9.0-3-amd64 linux-image-4.9.0-4-amd64
dpkg -P linux-image-4.9.0-3-amd64 linux-image-4.9.0-4-amd64 linux-image-4.9.0-6-amd64 linux-image-4.15.0-23-generic linux-image-4.15.0-20-generic
apt -y --fix-broken install
rm /root/hinet.sh ;dpkg -l|grep linux-image | awk '{print $2}'
#echo "linux-image-3.12-1-amd64 hold" | dpkg --set-selections
