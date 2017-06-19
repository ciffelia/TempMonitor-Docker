FROM arm32v7/openjdk:8-jre

ADD bin/TempMonitor-1.1.1-jar-with-dependencies.jar /root/TempMonitor-1.1.1.jar
ADD bin/monitor.properties /root/monitor.properties
ADD bin/twitter4j.properties /root/twitter4j.properties

ADD docker-entrypoint.sh /docker-entrypoint.sh

CMD /docker-entrypoint.sh
