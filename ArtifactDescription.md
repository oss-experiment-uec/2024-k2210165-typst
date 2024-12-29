# Artifact Description

## 概要：Typst用Dockerイメージの改良

### 改変対象OSS

Typstは、最新のフォーマット処理を行うための新しいドキュメント作成ツールである。元リポジトリ：https://github.com/typst/typst

本改変では、Typstの利用体験を向上させるために以下の内容をDockerイメージに追加した：

1. サンプルプロジェクトをDockerイメージに含め、ユーザーが即座にTypstを試せるように。
2. 簡易的なMakefileを追加し、Typstでのビルドをシングルコマンドで実行可能に。
3. ビルド済みTypstドキュメントの確認をスムーズに行えるスクリプトを追加。

### 改変内容

- サンプルファイル `main.typ` をイメージ内の `/artifact-evaluation/sample/` ディレクトリに追加。
- `Makefile` を `/artifact-evaluation/` ディレクトリに追加し、以下のコマンドを提供：
  - `make build`: TypstファイルをビルドしてPDFを生成。
  - `make clean`: ビルド生成物を削除。
- `make check` でサンプルファイルのビルドを実行し、成功を確認する仕組みを追加。
- 動作確認用に生成したPDFを `/artifact-evaluation/sample/output.pdf` に保存。

## クイックスタート

以下の手順で、改変済みTypst用Dockerイメージを試すことができる：

```
docker pull kan190729/2024-k2210165-typst
docker run -it --rm --name console kan190729/2024-k2210165-typst
```

コンテナ内で以下を実行して動作を確認する：

```
make check
```

これにより、Typstのサンプルプロジェクトがビルドされ、`/artifact/sample/output.pdf` にPDFが生成される。

## 評価手順

以下の手順で、改変内容の効果を確認できる：

1. コンテナ内でサンプルプロジェクトのディレクトリに移動する。

```
cd artifact-evaluation/sample
```

2. サンプルTypstファイル `main.typ` をビルドする。

```
make build
```

3. ビルドが成功したら、PDFファイルが `/artifact/sample/output.pdf` に生成されていることを確認する。

```
ls artifact-evaluation/sample/output.pdf
```

4. ビルド生成物を削除する。

```
make check
```

5. 再度ビルドし、`make check` コマンドで動作確認を行う。

```
make check
```

## 制限と展望

### 制限

- Dockerイメージサイズがサンプルプロジェクトや追加ツールにより若干増加している。
- 現時点ではサンプルプロジェクトが1つのみである。

### 展望

- 将来的に複数のサンプルプロジェクトを追加し、Typstの高度な機能（数式、図表、テンプレートなど）を試せるようにしたい。
- ユーザーが独自のTypstプロジェクトを簡単に追加・試行できるスクリプトを追加予定。
  
