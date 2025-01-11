FROM ruby:3.4.1-slim-bookworm

RUN apt-get update -qq && \
    apt-get install -y \
        git \
        vim \
        postgresql-client \
        libpq-dev \
        build-essential \
        libgmp-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /app

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install

ADD . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000
CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0", "-p", "3000"]