FROM progrium/busybox:latest

MAINTAINER Yevgeniy Brikman <jim@ybrikman.com>

ADD libstdc++.so.6.tar.gz /
RUN wget http://nodejs.org/dist/v0.12.0/node-v0.12.0-linux-x64.tar.gz \
    && gzip -d node-v0.12.0-linux-x64.tar.gz \
    && tar xvf node-v0.12.0-linux-x64.tar

ENV PATH /node-v0.12.0-linux-x64/bin:$PATH

CMD ["sh"]
