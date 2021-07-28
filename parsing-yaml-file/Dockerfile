FROM docker.io/jruby:9.2.16.0-jdk11
MAINTAINER extra2000 <https://github.com/extra2000>

RUN gem install jruby-lint ruby-debug

WORKDIR /opt/project
RUN bundle install
