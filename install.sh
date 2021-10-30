#Setup laravel project with installing necessary components
sudo apt-get update
sudo apt install curl -y
sudo apt-get install php -y
sudo apt-get install php7.4
sudo apt-get install php7.4-mbstring php7.4-mysql php7.4-xml php7.4-curl php7.4-json php7.4-zip -y
cd /home/ubuntu
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
chmod +x /usr/local/bin/composer
cd /home/ubuntu/DevOps-Challenge/app/
composer install
composer update
php artisan key:generate