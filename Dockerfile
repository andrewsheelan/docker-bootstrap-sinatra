FROM ruby:3
WORKDIR /app

RUN apt-get update -qq && apt-get install -y postgresql-client
COPY . .

RUN gem install bundler
RUN bundle install

EXPOSE 3000

CMD ["puma", "config.ru", "-C", "config/puma.rb", "-p", "3000"]
