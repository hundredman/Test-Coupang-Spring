FROM ubuntu:latest
LABEL authors="kim"

ENTRYPOINT ["top", "-b"]

# Base image: Use the official Tomcat image
FROM tomcat:9.0-jdk8

# Set environment variables
ENV TZ=Asia/Seoul

# Copy WAR file to Tomcat webapps directory
COPY target/CoupangSpring.war /usr/local/tomcat/webapps/

# Expose port 8080 for the application
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
