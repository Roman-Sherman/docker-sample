#　最新版のMySQLを利用する
FROM mysql:5.7

# タイムゾーンの設定
RUN cp -p /usr/share/zoneinfo/Japan /etc/localtime

# 日本語ローケルの設定
RUN apt-get update && \
    apt-get install -y locales && \
    rm -rf /var/lib/apt/lists/* && \
    echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8

COPY my.cnf /etc/mysql
RUN chmod 644 /etc/mysql/my.cnf
