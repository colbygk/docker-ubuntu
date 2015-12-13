FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive
ADD setup.sh /tmp/setup.sh
RUN /bin/bash /tmp/setup.sh

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
