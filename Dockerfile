FROM ruby:2.7.3
RUN apt update -y && apt install -y \
    yarn \
    nodejs \
    npm && \
    npm install -g \
    n \
    yarn && \
    n 14.17.6 && \
    gem install rails -v 6.0.3
WORKDIR /demo/sample_app
COPY sample_app/Gemfile sample_app/Gemfile.lock ./
RUN bundle install
