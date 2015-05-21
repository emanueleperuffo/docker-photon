FROM emanueleperuffo/oracle-java-8
MAINTAINER Emanuele Peruffo <info@emanueleperuffo.com>

ENV HOME /root
ADD . /build

ENV PHOTON_VERSION 0.2.2
ENV PGHOST postgres.example.com
ENV PGUSER nominatim

RUN /build/prepare.sh && \
	/build/services.sh && \
	/build/cleanup.sh

EXPOSE 2322

CMD ["/sbin/my_init"]