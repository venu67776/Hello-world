
FROM tomcat:8.0-alpine
LABEL maintainer=”sirisarikonda@gmail.com”
RUN mvn clean package
COPY webapp/target/webapp.war /usr/local/tomcat/webapps
EXPOSE 9090
CMD [“catalina.sh”, “run”]
