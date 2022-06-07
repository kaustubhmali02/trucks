FROM tomcat
COPY target/trucks.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]