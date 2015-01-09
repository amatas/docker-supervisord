FROM centos:centos7.0.1406

# AUTHOR Avtar Gill <agill@ocadu.ca>
# https://gist.github.com/avtar/5ad078656c52ac6f04ed#file-centos-7-dockerfile

AUTHOR Alfredo Matas <amatas@gmail.com>

RUN yum -y install epel-release \
&& yum clean all
 
RUN yum -y install supervisor \
&& yum clean all
 
COPY supervisord.conf /etc/supervisord.conf

CMD ["/bin/bash"]
