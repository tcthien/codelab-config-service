FROM java:8-jre
MAINTAINER Thien Tran <thientran1986@gmail.com>

ADD env /env.sh
ADD ./target/codelab-config-service.jar /app/

RUN chmod +x /env.sh; sync; /env.sh
RUN echo ${CODELAB_USER} && echo ${CODELAB_PASS}
CMD ["java", "-Xmx200m", "-jar", "/app/codelab-config-service.jar"]

EXPOSE 20088
