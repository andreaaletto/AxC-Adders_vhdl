FROM ghdl/run:ubuntu18-llvm-5.0
ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && \ 
    apt-get upgrade -y && \ 
    apt-get -y install cmake make git gtkwave

ADD ./ /opt