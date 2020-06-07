# Dockerfile
# ビルド環境
FROM gradle:6.4.1-jdk8 AS Builder

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

# ビルド環境でビルドしたjarファイルを追加
COPY --from=Builder /home/gradle/springboot-webapp-sample/build/libs/springboot-webapp-sample-1.2.0.jar ./app.jar

# jarファイルのタイムスタンプ変更
RUN sh -c 'touch ./app.jar'

# 8080番ポートを公開
EXPOSE 8080

# 実行時引数としてDocker環境向けプロファイルを指定してjarファイルを実行する
ENTRYPOINT java -Dspring.profiles.active=docker -Djava.security.egd=file:/dev/./urandom -jar ./app.jar