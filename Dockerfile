FROM java:8-jre
MAINTAINER Thien Tran <thientran1986@gmail.com>

ADD ./target/codelab-config-service.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/codelab-config-service.jar"]

EXPOSE 20088
