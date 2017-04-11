FROM centos:7

ENV DIRPATH /home
ENV JAVA_HOME /usr/java/default

#JDK7
RUN  curl -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u45-b18/jdk-7u45-linux-x64.rpm > jdk7.rpm \
&& yum -y localinstall jdk7.rpm && rm -f jdk7.rpm

WORKDIR $DIRPATH

ENTRYPOINT /bin/bash
