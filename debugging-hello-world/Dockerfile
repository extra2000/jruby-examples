FROM docker.io/jruby:9.2.19.0-jdk16
MAINTAINER extra2000 <https://github.com/extra2000>

RUN gem install jruby-lint ruby-debug

WORKDIR /opt/project
RUN bundle install
