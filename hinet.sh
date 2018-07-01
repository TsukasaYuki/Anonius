apt -y update
apt -y install aptitude
apt -y remove linux-image-4.9 ; apt -y remove linux-image-4.15
dpkg -P linux-image-4.9.0-3-amd64 linux-image-4.9.0-4-amd64 linux-image-4.9.0-6-amd64 linux-image-4.15.0-23-generic linux-image-4.15.0-20-generic
mkdir Linux ; cd Linux
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.18.113/linux-headers-3.18.113-0318113-generic_3.18.113-0318113.201806131532_amd64.deb --no-check-certificate
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.18.113/linux-image-3.18.113-0318113-generic_3.18.113-0318113.201806131532_amd64.deb --no-check-certificate
dpkg -i *.deb
cd ~ ; rm Linux -rf
update-grub
rm /root/hinet.sh ;dpkg -l|grep linux-image | awk '{print $2}'
#echo "linux-image-3.12-1-amd64 hold" | dpkg --set-selections
