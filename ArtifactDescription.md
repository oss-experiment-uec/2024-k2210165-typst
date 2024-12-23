# Artifact Description

## 概要：{typst}

* 改変対象OSS
  + typst(https://github.com/typst/typst)
* 改変内容
  + 変更

## クイックスタート

* Dockerイメージをpullしてrunする手順を具体的に示す．

```
docker pull kan190729/2024-k2210165-typst
docker run -it --rm --name console kan190729/2024-k2210165-typst
```

* コンテナの中に入った後，最低限の動作チェックを行う方法を示す．

```
rustc
```

## 評価手順

1. 入力例 `hello_world.rs` を与えて実行する．

```
rustc hello_world.rs
./hello_world
```

を実行すると

```
Hello, World
```

が出力される．

## 制限と展望．

* rustのインストールの後、typstのインストールの際に、typst公式のインストール方法を用いると、ubuntu:24.04ではエラーを解決することができなかった。

