
sudo apt-get update
sudo addgroup --system www-data
sudo adduser www-data www-data
sudo apt-get install build-essential automake libmpg123-dev libmodplug-dev libphysfs-dev libfreetype6-dev libdevil-dev liblua5.1-0-dev libopenal-dev libsdl1.2-dev libvorbis-dev vsftpd imagemagick lighttpd php5-cgi git
sudo lighty-enable-mod cgi

sudo cp config_files/vsftpd.conf /etc/vsftpd.conf
sudo cp config_files/php.ini /etc/php5/cgi/php.ini
sudo cp config_files/lighttpd.conf /etc/lighttpd/lighttpd.conf
sudo cp config_files/10-cgi.conf /etc/lighttpd/conf-enabled/10-cgi.conf
sudo cp -r .advance/ .advance/
sudo cp -r www/ /var/


sudo /etc/init.d/lighttpd force-reload

git clone https://github.com/ssilverm/PiMAME.git
wget http://sheasilverman.com/rpi/raspbian/debs/advancemame_1.2-1_armhf.deb
wget http://sheasilverman.com/rpi/raspbian/debs/advancemenu_2.6-1_armhf.deb

sudo dpkg --force-overwrite -i advancemenu_2.6-1_armhf.deb 
sudo dpkg --force-overwrite -i advancemame_1.2-1_armhf.deb 
wget http://sheasilverman.com/rpi/raspbian/pcsx_rearmed_19042013.zip
unzip pcsx_rearmed_19042013.zip 



rm advancemame_1.2-1_armhf.deb 
rm advancemenu_2.6-1_armhf.deb 
rm pcsx_rearmed_19042013.zip 

sudo echo 'www-data ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
sudo reboot

