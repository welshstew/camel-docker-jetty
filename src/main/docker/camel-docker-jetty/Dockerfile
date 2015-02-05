FROM dockerfile/java:latest

ENV JETTY_VERSION 9.2.7.v20150116
ENV HAWTIO_VERSION 1.4.45

WORKDIR /opt

RUN wget http://eclipse.org/downloads/download.php\?file\=/jetty/stable-9/dist/jetty-distribution-${JETTY_VERSION}.tar.gz\&r\=1 -O jetty-distribution-${JETTY_VERSION}.tar.gz

RUN tar -xzvf jetty-distribution-${JETTY_VERSION}.tar.gz
RUN rm -rf jetty-distribution-${JETTY_VERSION}.tar.gz
RUN mv jetty-distribution-${JETTY_VERSION} jetty

RUN wget https://oss.sonatype.org/content/repositories/public/io/hawt/hawtio-default/${HAWTIO_VERSION}/hawtio-default-${HAWTIO_VERSION}.war -O hawtio.war

WORKDIR /opt/jetty

ADD jetty/ /opt/jetty/build-base
RUN chmod 777 /opt/jetty/build-base/startup.sh
ADD ${project.build.finalName}.war /opt/jetty/build-base/webapps/root.war
RUN mv /opt/hawtio.war /opt/jetty/build-base/webapps/hawtio.war

WORKDIR /opt/jetty/build-base

CMD ./startup.sh
