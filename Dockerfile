FROM ruby:3.0.2
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt update -y && apt install -y yarn
RUN gem install rails -v 6.0.3
WORKDIR /demo/hello_app
COPY hello_app/Gemfile hello_app/Gemfile.lock ./
RUN bundle install
