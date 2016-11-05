FROM kitsudo/centos6_maven
MAINTAINER Dave Luo <kitsudo163@163.com>

ENV TOMCAT_VERSION=6.0.47
ENV TOMCAT_HOME=/opt/tomcat

RUN mkdir $TOMCAT_HOME && curl -sSL \
    http://archive.apache.org/dist/tomcat/tomcat-6/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz | \
    tar zxv -C $TOMCAT_HOME --strip-components 1
