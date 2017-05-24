FROM bitnami/minideb:jessie

LABEL maintainer="wcollani@gmail.com" \
      version="v0.1.0"

RUN install_packages git ssh tar gzip ca-certificates \
	apt-transport-https curl python-software-properties

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
	 echo "deb [arch=amd64] https://download.docker.com/linux/debian jessie stable" >> /etc/apt/sources.list


RUN install_packages docker-ce
