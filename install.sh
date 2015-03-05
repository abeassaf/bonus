#! /bin/sh
# This script will setup httpmon.sh to run cron job every 1 minute (cron jobs will run 1 minute minimum increments), 
# but the script will loop twice and effectively run every 30 seconds. Next it will create httpmon.log in "/var/log/httpmon/"
# by directing cron output to the log file. The logs will be rotated using logrotate and the provided logrotate configuration
# file for httpmon in "/etc/logrotate.d/httpmon".  Next we will run the logstash agent to ship the httpmon.log file to logstash 
# and display the output to the screen

sudo cp httpmon.sh /usr/bin/
# This will setup crontab to run the httpmon
sudo crontab httpmon.cron
# copy the logrotate config to logrotate.d
sudo cp logrotate.d/httpmon /etc/logrotate.d/
# Force the logrotate to initiate httpmon
sudo logrotate -f /etc/logrotate.conf


# copy the logstash shipper config file to "/etc"
sudo cp shipper.conf /etc
.
