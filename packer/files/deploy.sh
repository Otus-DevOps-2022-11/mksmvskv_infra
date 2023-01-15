apt-get install -y git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
sleep 30
sudo cp /tmp/puma.service /etc/systemd/system/puma.service
sudo mv /tmp/puma.service /home/ubuntu/reddit/puma.service
sudo systemctl daemon-reload
sudo systemctl start puma
sudo systemctl enable puma
sudo systemctl start puma
