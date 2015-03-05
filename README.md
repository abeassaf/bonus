# bonus
This bonus challenge will do the following:
1. Setup httpd/Apache process monitor and display warnings based on the number of processes. 
2. Create cron job that will run the monitor every minute and send the output to log file.
3. It will rotate the logs based on size (1k).
4. it will ship the logs to logstash via logstash's agent and display the output to the screen.


This script assume the following true:

1. "Logrotate application is installed on the system. If not you can either build it from source or use
the binary package based on your Linux distribution.

e.g sudo apt-get install logrotate

2. You have installed logstash package and placed the application in "/opt"  directory.
You can install logstash  1.4.0 from:

curl -O https://download.elasticsearch.org/logstash/logstash/logstash-1.4.0.tar.gz

Or you can download the latest binary from:
http://www.elasticsearch.org/overview/logstash/download/
