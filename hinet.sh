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
echo "linux-image-3.12-1-amd64 hold" | dpkg --set-selections
update-grub
rm /root/hinet.sh
