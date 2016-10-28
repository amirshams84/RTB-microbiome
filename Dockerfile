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

##############################################################
# Software:             16S_DATA_ANALYSER
# Software Version:     1.0
# Software Website:     -
# Description:          ..
# #############################################################
RUN wget "https://raw.githubusercontent.com/amirshams84/16S_Data_Parser/master/16S_analyser_cloud.py" -O 16S_analyser_cloud.py ;

CMD ["/bin/bash"]

