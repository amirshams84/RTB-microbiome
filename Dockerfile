FROM amirshams/centos7:3.0

MAINTAINER Amir Shams <amir.shams84@gmail.com>
ENV ROOT=/
ENV CURRENT_PATH=./
##############################################################
# Software:             javascript
# Software Version:     1.0
# Software Website:     -
# Description:          required javascript library
##############################################################
RUN git clone https://github.com/amirshams84/javascript $CURRENT_PATH/javascript
RUN chmod -R 0755 $CURRENT_PATH/javascript/ ;

##############################################################
# Software:             exec
# Software Version:     1.0
# Software Website:     -
# Description:          required execution files
##############################################################
RUN git clone https://github.com/amirshams84/exec $CURRENT_PATH/exec
RUN chmod -R 0755 $CURRENT_PATH/exec/ ;

RUN git clone https://github.com/amirshams84/test_data $CURRENT_PATH/test_data
RUN chmod -R 0755 $CURRENT_PATH/test_data/ ;

VOLUME $CURRENT_PATH/16S_simple_analyser_results

RUN wget https://raw.githubusercontent.com/amirshams84/16S_Data_Parser/master/16S_simple_analyser.py -P $CURRENT_PATH/

CMD ["bin/bash"]

