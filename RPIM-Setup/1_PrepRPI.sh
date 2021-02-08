sudo apt-get install git python3 python3-pip python3-tzlocal python3-sdnotify python3-colorama python3-unidecode python3-paho-mqtt

sudo git clone https://github.com/ironsheep/RPi-Reporter-MQTT2HA-Daemon.git /opt/RPi-Reporter-MQTT2HA-Daemon

cd /opt/RPi-Reporter-MQTT2HA-Daemon
sudo pip3 install -r requirements.txt

# All operational details can be configured by modifying entries within the file config.ini.
# Configure in config.ini

sudo cp /opt/RPi-Reporter-MQTT2HA-Daemon/config.{ini.dist,ini}
sudo nano /opt/RPi-Reporter-MQTT2HA-Daemon/config.ini

# You will likely want to locate and configure the following (at a minimum) in your config.ini:
# fallback_domain = {if you have older RPis that dont report their fqdn correctly}
# hostname = {your-mqtt-broker}
#
# discovery_prefix = {if you use something other than 'homeassistant'}
#
# base_topic = {your home-assistant base topic}

# username = {your mqtt username if your setup requires one}
# password = {your mqtt password if your setup requires one}
