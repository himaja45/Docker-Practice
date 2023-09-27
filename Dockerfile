FROM centos:7

RUN yum -y update && \
    yum -y install epel-release && \
    yum install -y wget && \
    yum install -y rpm && \
    yum install -y java-11-openjdk-devel && \
    yum install -y maven && \
    yum clean all

RUN curl -L -o /opt/jenkins.war https://get.jenkins.io/war-stable/latest/jenkins.war
EXPOSE 8080

