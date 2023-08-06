sudo apt-get update && sudo apt-get upgrade
sudo apt-get install apache2 mariadb-server php php-mysql libapache2-mod-php php-xml php-mbstring
sudo apt-get install imagemagick php-curl php-bcmath php-apcu
sudo service apache2 reload
cd /tmp/
wget https://releases.wikimedia.org/mediawiki/1.40/mediawiki-1.40.0.tar.gz
tar -xvzf /tmp/mediawiki-*.tar.gz
sudo mkdir /var/lib/mediawiki
sudo mv mediawiki-*/* /var/lib/mediawiki
echo "Now create a user"
sudo mysql -u root -p 
sudo nano /etc/php/7.*/apache2/php.ini
sudo ln -s /var/lib/mediawiki /var/www/html/mediawiki
sudo phpenmod mbstring
sudo phpenmod xml
sudo apt install php-intl
sudo systemctl restart apache2.service
