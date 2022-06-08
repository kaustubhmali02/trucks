FROM maven:3.8.5-jdk-8 AS build
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN mvn clean install

FROM tomcat
COPY --from=build /usr/src/app/target/trucks.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]