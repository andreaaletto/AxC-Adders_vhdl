FROM ghdl/run:ubuntu18-mcode

RUN apt-get update && \ 
    apt-get upgrade && \ 
    apt-get -y install cmake make git gtkwave

ADD ./ /opt