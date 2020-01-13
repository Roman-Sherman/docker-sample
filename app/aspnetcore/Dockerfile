# ビルド環境
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS builder

# GitHubよりソースコードを取得
RUN git clone https://github.com/ybkuroki/aspnetcore-webapp-sample.git
# 作業ディレクトリへ移動
WORKDIR /aspnetcore-webapp-sample

# ビルド実行
RUN dotnet publish -c Release -o out


# 実行環境
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS runtime
# 作業ディレクトリへ移動
WORKDIR /app
# ビルド環境でビルドしたDLLファイルをコピー
COPY --from=builder /aspnetcore-webapp-sample/out ./

# DLLファイルを実行
ENTRYPOINT dotnet aspdotnet_managesys.dll --environment="Docker"
