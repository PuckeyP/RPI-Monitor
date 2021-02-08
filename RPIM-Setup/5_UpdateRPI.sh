# Systemd commands to perform update

# go to local repo
cd /opt/RPi-Reporter-MQTT2HA-Daemon

# stop the service
sudo systemctl stop isp-rpi-reporter.service

# get the latest version
sudo git pull

# reload the systemd configuration (in case it changed)
sudo systemctl daemon-reload

# restart the service with your new version
sudo systemctl start isp-rpi-reporter.service

# if you want, check status of the running script
systemctl status isp-rpi-reporter.service
