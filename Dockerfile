FROM kitsudo/centos6_maven
MAINTAINER Dave Luo <kitsudo163@163.com>

ENV TOMCAT_VERSION=6.0.47
ENV TOMCAT_HOME=/opt/tomcat

RUN yum install -y \
        mysql-server \
        mysql \
        nc

RUN mkdir $TOMCAT_HOME && curl -sSL \
    http://archive.apache.org/dist/tomcat/tomcat-6/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz | \
    tar zxv -C $TOMCAT_HOME --strip-components 1

ENV JSSE_OPTS="-Dfile.encoding=utf-8 "
WORKDIR ${TOMCAT_HOME}/bin
EXPOSE 8080
ENTRYPOINT ["./catalina.sh"]
CMD ["run"]
