FROM openjdk:8-jdk-stretch
ENV FAN_JAVA="/usr/bin/java"
COPY . /skyspark
RUN chmod 777 -R /skyspark/bin/
WORKDIR /skyspark/
VOLUME /skyspark/var
CMD [ "/skyspark/bin/skyspark" ]
EXPOSE 8080
EXPOSE 47808
EXPOSE 502
EXPOSE 1876