FROM ddosguard/debian-9_cpp

USER root

RUN set -x \
  && apt-get update -qq \
  && apt-get install --no-install-recommends -qy \
     devscripts \
     build-essential \
     fakeroot \
     debhelper \
     dh-autoreconf \
     cdbs \
     libcppunit-dev \
     libsasl2-dev \
     libxml2-dev \
     libkrb5-dev \
     libdb-dev \
     libnetfilter-conntrack-dev \
     libexpat1-dev \
     libcap2-dev \
     libldap2-dev \
     libpam0g-dev \
     libgnutls28-dev \
     libssl-dev \
     libdbi-perl \
     libexpat-dev \
     libluajit-5.1-dev \
     libmhash-dev \
     libperl-dev \
     libmsgpack-dev \
     build-essential \
     zlib1g-dev \
     libpcre3 \
     libpcre3-dev \
     unzip \
     uuid-dev \
     apache2-dev \
     libxml2-dev \
     libcurl4-openssl-dev \
  && apt-get autoremove -y \
  && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/archives/*
