FROM ghdl/run:latest

RUN apt-get update && \ 
    apt-get -y install cmake make git gtkwave

ADD ./ /opt