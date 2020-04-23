FROM ruby:2.6.5-alpine
ENV LANG C.UTF-8

RUN mkdir /web
RUN mkdir /web/app
ENV APP_ROOT /web/app
WORKDIR $APP_ROOT

ADD ./web $APP_ROOT

RUN apk update
RUN apk add --update --no-cache \
      bash \
      mariadb-connector-c-dev \
      nodejs \
      tzdata
RUN apk add --update --no-cache --virtual .build-dependencies \
      build-base \
      curl-dev \
      gcc \
      g++ \
      libxml2-dev \
      libxslt-dev \
      linux-headers \
      make \
      mariadb-dev \
      ruby-dev \
      yaml-dev \
      zlib-dev \
      sqlite-dev
RUN apk add --update nodejs npm
RUN npm install -g yarn
RUN gem install bundler -v 2.0.2
RUN bundle install -j4
RUN apk del .build-dependencies
RUN apk add xz-dev

ARG ASSETS_PRECOMPILE=true
RUN if [ ${ASSETS_PRECOMPILE} = true ]; then \
  rake assets:precompile \
;fi

VOLUME [ "/web/app/public", "/web/app/tmp" ]