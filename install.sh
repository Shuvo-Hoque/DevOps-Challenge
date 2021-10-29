#Setup laravel project git code
sudo su ubuntu
sudo apt-get update
sudo apt-get install php -y
sudo apt-get install php7.4
sudo apt-get install php7.4-mbstring php7.4-mysql php7.4-xml php7.4-curl php7.4-json php7.4-zip -y
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
chmod +x /usr/local/bin/composer
cd DevOps-Challenge
composer install
cp .env.example .env
php artisan key:generate

#Docker install
cd ..
sudo -i
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo docker-compose --version
sudo docker run hello-world
sudo groupadd docker
sudo usermod -aG docker ubuntu

sudo su ubuntu
sudo service apache2 stop -y
sudo apt remove apache2 -y
cd DevOps-Challenge
docker-compose up -d --build