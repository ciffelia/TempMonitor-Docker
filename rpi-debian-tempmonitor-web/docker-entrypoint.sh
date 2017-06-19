#!/bin/bash -e

cd /root

sed -i -e "s/\[YOUR SQL HOSTNAME HERE\]/$MYSQL_HOSTNAME/g" monitor.properties
sed -i -e "s/\[YOUR SQL PORT HERE\]/$MYSQL_PORT/g" monitor.properties
sed -i -e "s/\[YOUR SQL DATABASE NAME HERE\]/$MYSQL_DATABASE/g" monitor.properties
sed -i -e "s/\[YOUR SQL USERNAME HERE\]/$MYSQL_USER/g" monitor.properties
sed -i -e "s/\[YOUR SQL PASSWORD HERE\]/$MYSQL_PASSWORD/g" monitor.properties

sed -i -e "s/\[YOUR TWITTER CONSUMER KEY HERE\]/$TWITTER_CONSUMER_KEY/g" twitter4j.properties
sed -i -e "s/\[YOUR TWITTER CONSUMER SECRET HERE\]/$TWITTER_CONSUMER_SECRET/g" twitter4j.properties
sed -i -e "s/\[YOUR TWITTER ACCESS TOKEN HERE\]/$TWITTER_ACCESS_TOKEN/g" twitter4j.properties
sed -i -e "s/\[YOUR TWITTER ACCESS TOKEN SECRET HERE\]/$TWITTER_ACCESS_TOKEN_SECRET/g" twitter4j.properties

java -jar TempMonitor-1.1.1.jar

