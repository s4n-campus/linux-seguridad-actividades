FROM centos:8
RUN sed -i -e "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-*
RUN sed -i -e "s|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g" /etc/yum.repos.d/CentOS-*
RUN dnf clean all
RUN dnf swap centos-linux-repos centos-stream-repos -y
RUN yum install -y iptables nano python36
COPY start.sh /start.sh
RUN chmod +x start.sh
EXPOSE 8000 8001 8002

ENTRYPOINT ["bash", "/start.sh"]
