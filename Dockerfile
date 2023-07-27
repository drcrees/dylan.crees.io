FROM ruby:2.7-alpine

RUN apk add --no-cache build-base git

WORKDIR /site

COPY . .
RUN gem install bundler && bundle install

EXPOSE 8080

ENTRYPOINT ["bundle"]
CMD ["exec", "jekyll", "serve", "--livereload", "--host", "0.0.0.0", "--port", "8080"]
