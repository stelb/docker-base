FROM centos:7

RUN yum -y update && yum -y install python-setuptools && yum clean all && easy_install supervisor

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
