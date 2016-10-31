FROM amirshams/centos7:2.0

MAINTAINER Amir Shams <amir.shams84@gmail.com>

##############################################################
# Software:             javascript
# Software Version:     1.0
# Software Website:     -
# Description:          required javascript library
##############################################################
RUN git clone https://github.com/amirshams84/javascript
RUN chmod -R 0755 /javascript/ ;

##############################################################
# Software:             exec
# Software Version:     1.0
# Software Website:     -
# Description:          required execution files
##############################################################
RUN git clone https://github.com/amirshams84/exec
RUN chmod -R 0755 /exec/ ;

RUN git clone https://github.com/amirshams84/test_data
RUN chmod -R 0755 /test_data/ ;

RUN git clone https://raw.githubusercontent.com/amirshams84/16S_Data_Parser/master/16S_data_analyser.py
##############################################################
# Software:             nginx
# Software Version:     1.0
# Software Website:     -
# Description:          nginx setup
##############################################################
ENV nginxversion="1.10.0-1" \
    os="centos" \
    osversion="7"

RUN yum install -y wget openssl sed &&\
    package-cleanup -q --leaves | xargs -l1 yum -y remove &&\
    yum clean all &&\
    wget http://nginx.org/packages/$os/$osversion/x86_64/RPMS/nginx-$nginxversion.el$osversion.ngx.x86_64.rpm &&\
    rpm -iv nginx-$nginxversion.el$osversion.ngx.x86_64.rpm &&\
    sed -i '1i\
    daemon off;\
    ' /etc/nginx/nginx.conf

CMD ["nginx"]
# ##########################################################
VOLUME /16S_data_analyser_output
VOLUME /usr/share/nginx/html

CMD ["/bin/bash"]

