FROM ubuntu:18.10
RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y software-properties-common python-software-properties \
	&& add-apt-repository ppa:linuxuprising/java \
	&& apt-get update \
	&& apt-get install -y libx11-6 xmlstarlet xsltproc \
	&& echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections \
	&& echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections \
	&& apt-get install -y oracle-java10-installer \
	&& apt-get update \
	&& apt-get upgrade -y
