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

VOLUME /16S_data_analyser_output

RUN wget https://raw.githubusercontent.com/amirshams84/16S_Data_Parser/master/16S_data_analyser.py
RUN rpm -iv http://nginx.org/packages/centos/7/x86_64/RPMS/nginx-1.10.0-1.el7.ngx.x86_64.rpm

EXPOSE 80 443

VOLUME /usr/share/nginx/html

CMD ["nginx"]

