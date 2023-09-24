FROM centos:7
RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install python3 python3-pip && \
    yum clean all
RUN pip3 install --upgrade pip
RUN pip3 install poetry
RUN poetry --version



