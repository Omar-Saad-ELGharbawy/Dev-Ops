FROM gcc:10.2
LABEL Description="Image for running googletests"


RUN apt-get update && apt-get install -y cmake \
    && git clone https://github.com/google/googletest.git -b release-1.10.0 /googletest \
    && mkdir -p /googletest/build \
    && cd /googletest/build \
    && cmake .. \
	&& make \
	&& make install \
    && cd / \
	&& rm -rf /googletest

ENV LIBRARY_PATH /usr/local/lib
	
WORKDIR	/mnt

