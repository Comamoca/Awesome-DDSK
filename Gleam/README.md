# Gleam

GleamはErlang VM(BEAM)とJavaScript Runtime(Node/Deno)上で動く静的型付け関数型言語です。

[公式サイト](https://gleam.run)

## 実行方法

```sh
gleam run   # Run the project
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```

## Gleam Playground

(JavaScriptターゲットのみ実行可能です。)
https://johndoneth.github.io/gleam-playground/

## Docker

```sh
docker build . -t ddsk:gleam
docker run --rm ddsk:gleam
```
