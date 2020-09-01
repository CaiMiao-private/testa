FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -qy \
	git \
	build-essential \
	gawk \
	pkg-config \
	gettext \
	automake \
	autoconf \
	autopoint \
	libtool \
	bison \
	flex \
	zlib1g-dev \
	libgmp3-dev \
	libmpfr-dev \
	libmpc-dev \
	texinfo \
	mc \
	libncurses5-dev \
	nano \
	vim \
  	autopoint \
	gperf \
	python-docutils sudo

RUN sudo apt install -qy unzip libtool-bin curl cmake gperf gawk flex bison nano xxd fakeroot \
        cpio git python-docutils gettext automake autopoint texinfo build-essential help2man \
        pkg-config zlib1g-dev libgmp3-dev libmpc-dev libmpfr-dev libncurses5-dev libltdl-dev wget

RUN mkdir /opt/rt-n56u && chmod a+rwx /opt/rt-n56u

RUN git clone https://github.com/chongshengB/rt-n56u.git /opt/rt-n56u

RUN cd /opt/rt-n56u/toolchain-mipsel && ./build_toolchain

#USER root
