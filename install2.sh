#Stopping apache server so that we can run nginx server in 80 port
sudo service apache2 stop -y
sudo apt remove apache2 -y

#dockerization of laravel project
cd /home/ubuntu/DevOps-Challenge/app/
docker-compose up -d --build