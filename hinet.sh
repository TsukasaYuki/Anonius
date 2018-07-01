mkdir Linux ; cd Linux
wget hhttp://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.52/linux-headers-4.1.52-040152-generic_4.1.52-040152.201805290846_amd64.deb --no-check-certificate
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.52/linux-headers-4.1.52-040152-generic_4.1.52-040152.201805290846_amd64.deb --no-check-certificate
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.52/linux-image-4.1.52-040152-generic_4.1.52-040152.201805290846_amd64.deb --no-check-certificate
dpkg -i --force-hold --force-depends *.deb
cd ~ ; rm Linux -rf
apt -y remove linux-image-4.9 ; apt -y remove linux-image-4.15
dpkg -P linux-image-4.9.0-3-amd64 linux-image-4.9.0-4-amd64 linux-image-4.9.0-6-amd64 linux-image-4.15.0-23-generic linux-image-4.15.0-20-generic
update-grub
rm /root/hinet.sh ;dpkg -l|grep linux-image | awk '{print $2}'
#echo "linux-image-3.12-1-amd64 hold" | dpkg --set-selections
