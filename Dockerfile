FROM centos:centos8
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN curl -fsSL https://rpm.nodesource.com/setup_20.x | bash - \
    && yum clean all \
    && yum install -y make gcc* \
    && yum install -y nodejs \
    && yum install -y git \
    && npm i pnpm -g
