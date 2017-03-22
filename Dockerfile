FROM java:8-jre
MAINTAINER Thien Tran <thientran1986@gmail.com>

ADD env /env.sh
ADD ./target/codelab-config-service.jar /app/
source /env.sh
CMD ["java", "-Xmx200m", "-jar", "/app/codelab-config-service.jar"]

EXPOSE 20088
