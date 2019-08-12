# Dockerfile
# ビルド環境
FROM gradle:5.4.1-jdk11 AS Builder

# GitHubよりソースコードを取得
RUN git clone https://github.com/ybkuroki/springboot-webapp-sample.git

# 作業ディレクトリへ移動
WORKDIR /home/gradle/springboot-webapp-sample

# ビルド実行
RUN gradle bootJar


# 実行環境
FROM openjdk:8-jdk AS Runtime

# apt-getのパッケージリスト更新
RUN apt-get update

# タイムゾーンを東京に設定する
ENV TZ 'Asia/Tokyo'

# 言語設定を日本語に設定する
#RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
#  && apt-get install -y locales \
#  && update-locale LANG=ja_JP.UTF-8 \
#  && . /etc/default/locale \
#  && echo export LANG=ja_JP.UTF-8 >> /root/.profile

# MySQLクライアントをインストールする
RUN apt-get -y install mysql-client

# データベース接続を待つスクリプトを追加
COPY ./wait.sh ./wait.sh

# ビルド環境でビルドしたjarファイルを追加
COPY --from=Builder /home/gradle/springboot-webapp-sample/build/libs/springboot-webapp-sample.jar ./app.jar

# jarファイルのタイムスタンプ変更
RUN sh -c 'touch ./app.jar'

# 8080番ポートを公開
EXPOSE 8080

# 実行時引数としてDocker環境向けプロファイルを指定してjarファイルを実行する
ENTRYPOINT sh ./wait.sh mysql-db testusr testusr java -Dspring.profiles.active=docker -Djava.security.egd=file:/dev/./urandom -jar ./app.jar
