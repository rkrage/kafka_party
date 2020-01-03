ARG CONTAINER_RUBY_VERSION
FROM ruby:$CONTAINER_RUBY_VERSION

RUN curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > /usr/local/bin/cc-reporter && \
    chmod +x /usr/local/bin/cc-reporter

RUN mkdir /code

WORKDIR /code

COPY . /code

RUN bundle install

RUN rm -rf *

ENV PATH "/code/bin:$PATH"

CMD /bin/sleep infinity
