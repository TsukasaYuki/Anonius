apt update
apt install unzip
mkdir Linux
cd Linux
wget https://github.com/TsukasaYuki/linux-image-3.122/raw/master/Linux.zip.001 --no-check-certificate
wget https://github.com/TsukasaYuki/linux-image-3.122/raw/master/Linux.zip.002 --no-check-certificate
cat Linux.zip* > linux.zip
unzip linux.zip
rm linux.zip
dpkg -i *.deb
cd ~
rm Linux -rf
apt -y -f remove linux-image-4.9
apt -y -f remove linux-image-4.15
dpkg --get-selections | grep linux-image
dpkg -P linux-image-4.9.0-3-amd64 linux-image-4.9.0-4-amd64 linux-image-4.9.0-6-amd64
#echo "linux-image-3.12-1-amd64 hold" | dpkg --set-selections
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.18.113/linux-headers-3.18.113-0318113-generic_3.18.113-0318113.201806131532_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.18.113/linux-image-3.18.113-0318113-generic_3.18.113-0318113.201806131532_amd64.deb
dpkg -i --force-hold --force-depends *.deb
update-grub
rm /root/hinet.sh
