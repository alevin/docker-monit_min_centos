docker-monit_min
================

Minimalistic monit based docker ( based on centos6 )

Including basic monit monitoring and alerting

before the build - edit Dockerfile and define followint variables:

MAILSERVER  - your mailserver host/ip
ALERT       - email address for notification
ALLOW       - username and password for the monit web interface  ( port 2812 ) 


run as:
  
docker run -p 3812:2812 -d IMAGE_ID 
