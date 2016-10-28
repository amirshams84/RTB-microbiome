FROM amirshams/centos7:2.0

MAINTAINER Amir Shams <amir.shams84@gmail.com>

##############################################################
# Software:             mothur
# Software Version:     1.38.0
# Software Website:     www.mothur.org
# Description:          16S analyser
##############################################################

RUN wget https://github.com/mothur/mothur/releases/download/v1.38.1/Mothur.linux_64.zip && \
    unzip Mothur.linux_64.zip && \
    rm Mothur.linux_64.zip && \
    rm -rf __MACOSX

#adds executables to the path
ENV PATH /mothur:$PATH

##############################################################
# Software:             javascript
# Software Version:     1.0
# Software Website:     -
# Description:          required javascript libraray
##############################################################
RUN mkdir -p javascript ;
RUN cd javascript ;
RUN wget "https://github.com/amirshams84/javascript/blob/master/jquery-2.2.3.min.js" -O /javascript/jquery-2.2.3.min.js ;
RUN wget "https://github.com/amirshams84/javascript/blob/master/bootstrap.min.js" -O /javascript/bootstrap.min.js ;
RUN wget "https://github.com/amirshams84/javascript/blob/master/bootstrap.min.css" -O /javascript/bootstrap.min.css ;
RUN wget "https://github.com/amirshams84/javascript/blob/master/jquery.tablesorter.js" -O /javascript/jquery.tablesorter.js ;
RUN wget "https://github.com/amirshams84/javascript/blob/master/plotly-latest.min.js" -O /javascript/plotly-latest.min.js ;
RUN wget "https://github.com/amirshams84/javascript/blob/master/tether.min.js" -O /javascript/tether.min.js ;
RUN wget "https://github.com/amirshams84/javascript/blob/master/font-awesome.min.css" -O /javascript/fontawesome.min.css ;
RUN wget "https://github.com/amirshams84/javascript/blob/master/fontawesome.min.js" -O /javascript/fontawesome.min.js ;
RUN chmod 0777 /javascript/* ;

# ############################################################
CMD ["/bin/bash"]

