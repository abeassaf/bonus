# Run the logstash agent to parse the httpmon.log file and output to the screen 
/opt/logstash/bin/logstash agent -f /etc/shipper.conf
