FROM ubuntu
MAINTAINER yyabuki <yabuki.yukimitsu@imsbio.co.jp>
RUN apt-get update && apt-get -y upgrade \
    && apt-get -y install mercurial \
    && apt-get -y install make \
    && apt-get -y install g++ \
    && hg clone http://last.cbrc.jp/last/ \
    && cd last \
    && make \
    && make install \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*
WORKDIR /last
