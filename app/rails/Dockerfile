FROM ruby:2.5.1
ENV LANG C.UTF-8
RUN apt-get update -qq && apt-get install -y --no-install-recommends build-essential postgresql nodejs
RUN gem install bundler

RUN git clone https://github.com/ybkuroki/rails-webapp-sample.git
WORKDIR /rails-webapp-sample

RUN bundle install
ENV APP_HOME /rails-webapp-sample

# @see https://qiita.com/scivola/items/cc06ddbfd94d3118f693
# 秘匿情報を削除する
RUN rm ./config/credentials.yml.enc
# master.keyとcredentials.yml.encを再生成する
RUN EDITOR=vim rails credentials:edit
