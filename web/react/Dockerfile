# ビルド環境
FROM node:8.16.0 AS Builder

# GitHubよりソースコードを取得
RUN git clone https://github.com/ybkuroki/reactjs-webapp-sample.git

# 作業ディレクトリへ移動
WORKDIR /reactjs-webapp-sample

# パッケージのインストールとプロダクションビルド
RUN npm install \
  && npm run build


# 実行環境
FROM httpd:2.4 AS Runtime

# ビルド済みJavaScriptファイルとCSSファイルを追加
COPY --from=Builder /reactjs-webapp-sample/dist/ /usr/local/apache2/htdocs/
# httpd.confを追加
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

EXPOSE 80 443
