#Setup laravel project with installing necessary components
sudo apt-get update
sudo apt-get install php -y
sudo apt-get install php7.4
sudo apt-get install php7.4-mbstring php7.4-mysql php7.4-xml php7.4-curl php7.4-json php7.4-zip -y
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer
cd app/
sudo composer install -y
cp .env.example .env
php artisan key:generate
cd ..
cd ..
cd ..