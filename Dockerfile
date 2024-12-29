FROM ubuntu:24.04

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone
RUN apt update && apt upgrade -y

# カレントディレクトリ
WORKDIR /artifact



RUN apt-get update

# 必要なAPTパッケージを適当にインストール
RUN apt install -y build-essential git curl

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y





# Gitリポジトリを展開しても良い


# Dockerfileを実行する場所からファイルをコピーする場合
# COPY . /artifact