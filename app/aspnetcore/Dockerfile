# ビルド環境
FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS builder

# GitHubよりソースコードを取得
RUN git clone https://github.com/ybkuroki/aspnetcore-webapp-sample.git
# 作業ディレクトリへ移動
WORKDIR /aspnetcore-webapp-sample
# 設定の上書き
RUN rm -f ./appsettings.json && cp -f ./appsettings.Docker.json ./appsettings.json

# ビルド実行
RUN dotnet publish -c Release -o out


# 実行環境
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 AS runtime
# 作業ディレクトリへ移動
WORKDIR /app
# ビルド環境でビルドしたDLLファイルをコピー
COPY --from=builder /aspnetcore-webapp-sample/out ./

# 環境変数を設定
ENV ASPNETCORE_ENVIRONMENT=Docker
# DLLファイルを実行
ENTRYPOINT dotnet aspdotnet_managesys.dll
