FROM brucepc/symfony-base:7.1-fpm

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -yqq \
    && apt-get install -yqq yarn \
    && rm -rf /var/lib/apt/lists/*
