# Scheme

`gauche` にて動作確認しております。( https://practical-scheme.net/gauche/index-j.html )

## 環境構築
https://practical-scheme.net/gauche/download-j.html を参考にコンパイルなりインストールなりしてください。

## 実行方法

`gosh ./ddsk.scm`

## Docker

```sh
docker build . -t ddsk:scheme
docker run --rm ddsk:scheme
```
