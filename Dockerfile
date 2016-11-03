FROM amirshams/centos7:3.0

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
WORKDIR /
RUN wget https://raw.githubusercontent.com/amirshams84/16S_Data_Parser/master/16S_simple_analyser.py

CMD ["bin/bash"]

