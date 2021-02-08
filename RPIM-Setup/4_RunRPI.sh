# By default this script is run as user:group  daemon:daemon.
# As this script requires access to the GPU you'll want to add access to it for the daemon user as follows:

# list current groups
groups daemon
$ daemon : daemon

# add video if not present
sudo usermod daemon -a -G video

# list current groups
groups daemon
$ daemon : daemon video

# Preparing to run full time - Set up the script to be run as a system service

sudo ln -s /opt/RPi-Reporter-MQTT2HA-Daemon/isp-rpi-reporter.service /etc/systemd/system/isp-rpi-reporter.service

sudo systemctl daemon-reload

# tell system that it can start our script at system startup during boot
sudo systemctl enable isp-rpi-reporter.service

# start the script running
sudo systemctl start isp-rpi-reporter.service

# check to make sure all is ok with the start up
sudo systemctl status isp-rpi-reporter.service

# NOTE: Please remember to run the 'systemctl enable ...' once at first install, if you want your script to start up
# every time your RPi reboots!
