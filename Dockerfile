FROM raspstack/ruby:2.1.5

RUN apt-get update -y
RUN gem install sinatra --no-document

ENV APP_PATH /var/opt/sinatra/src
RUN mkdir -p $APP_PATH

COPY . $APP_PATH

EXPOSE 4567

CMD ruby $APP_PATH/app.rb -o 0.0.0.0

