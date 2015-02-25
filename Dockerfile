FROM debian:jessie
MAINTAINER Jonathan Creekmore <jonathan@thecreekmores.org>

# Building a container we won't have an interactive prompt
ENV DEBIAN_FRONTEND noninteractive


# Install essential build tools
# Done as one big command to keep the image leaner
RUN apt-get --quiet --yes update && \
    apt-get --quiet --yes install build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists

# Install Python packages
# Done as one big command to keep the image leaner
RUN apt-get --quiet --yes update && \
    apt-get --quiet --yes install python && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists

# Install ARM development packages
# Done as one big command to keep the image leaner
RUN apt-get --quiet --yes update && \
    apt-get --quiet --yes install gcc-arm-none-eabi binutils-arm-none-eabi libnewlib-arm-none-eabi && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists

WORKDIR /tmp
