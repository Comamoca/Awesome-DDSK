<div align="center"><h1> 👏 Awesome DDSK 💕 </h1>

![Last commit](https://img.shields.io/github/last-commit/Comamoca/Awesome-DDSK?style=flat-square)
![Repository Stars](https://img.shields.io/github/stars/Comamoca/Awesome-DDSK?style=flat-square)
![Issues](https://img.shields.io/github/issues/Comamoca/Awesome-DDSK?style=flat-square)
![Open Issues](https://img.shields.io/github/issues-raw/Comamoca/Awesome-DDSK?style=flat-square)
![Bug Issues](https://img.shields.io/github/issues/Comamoca/Awesome-DDSK/bug?style=flat-square)

様々なドドスコプログラムを個人的に集めたリポジトリです。

🎉たくさんのPRありがとうございます！🎉
</div>

## ドドスコプログラムとは

ここでのドドスコプログラムとは[Sheeplaさんのツイート](https://twitter.com/Sheeeeepla/status/1554028833942441984?s=20&t=7NM1CBCnhpZsp3-4JfXBwg)が発端で流行り始めた、楽しんごさんの「ラブ注入💕」を決められたルールに従い出力するプログラムの総称です。

```txt
【問題】配列{"ドド","スコ"}からランダムに要素を標準出力し続け、『その並びが「ドドスコスコスコ」を3回繰り返したもの』に一致したときに「ラブ注入♡」と標準出力して終了するプログラムを作成せよ(配点:5点)
```

(2022/08/01 17:58)

## ディレクトリ構造について

ルート直下に各言語名のディレクトリを配置し、その中に`README.md`とプログラムを配置します。
`README`にはプログラムを実行するための環境構築の手順と、実行手順を記載します。
出来ればWeb上で実行できるリンクやDockerfileなども合わせて配置したいです。

## 実装された言語の一覧

- [AiScript](./AiScript) by @[ikasoba](https://github.com/ikasoba)
- [awk](./awk) by @[Mamonbo](https://github.com/Mamonbo)
- [Bash](./Bash) by @[Fus1onDev](https://github.com/Fus1onDev) and @[Hayao0819](https://github.com/Hayao0819)
- [C#](./C#) by @[Chatyusha](https://github.com/Chatyusha)
- [C++](./C++) by @[Chatyusha](https://github.com/Chatyusha)
- [C](./C) by @[Chatyusha](https://github.com/Chatyusha)
- [Clojure](./Clojure) by @[jiro4989](https://github.com/jiro4989)
- [Common Lisp](./CommonLisp) by @[skyizwhite](https://github.com/skyizwhite)
- [D](./D) by @[PenguinCabinet](https://github.com/PenguinCabinet)
- [Dart](./Dart) by @[Fus1onDev](https://github.com/Fus1onDev)
- [Go](./Go) by @[gamma-410](https://github.com/gamma-410)
- [Gleam](./Gleam) by @[Comamoca](https://github.com/Comamoca)
- [Java](./Java) by @[jiro4989](https://github.com/jiro4989)
- [Kotlin](./Kotlin) by @[OHMORIYUSUKE](https://github.com/OHMORIYUSUKE)
- [Nadesiko3](./Nadesiko3) by @[arrow2nd](https://github.com/arrow2nd)
- [Nim](./Nim) by @[Comamoca](https://github.com/Comamoca)
- [Python](./Python) by @[Chatyusha](https://github.com/Chatyusha)
- [Ruby](./Ruby) by @[Omochice](https://github.com/Omochice)
- [S](./S) by @[Chatyusha](https://github.com/Chatyusha)
- [Sed](./Sed) by @[jiro4989](https://github.com/jiro4989)
- [Swift](./Swift) by @[Fus1onDev](https://github.com/Fus1onDev)
- [TypeScript](./TypeScript) by @[mochi-sann](https://github.com/mochi-sann)
- [Zig](./Zig) by @[YuseiUeno](https://github.com/YuseiUeno)
- [Perl](./Perl) by @[YuseiUeno](https://github.com/YuseiUeno)
- [rust](./rust) by @[mochi-sann](https://github.com/mochi-sann)
- [php](./php) by @[code-raisan](https://github.com/code-raisan)
- [Julia](./Julia) by @[antimon2](https://github.com/antimon2)
- [JavaScript](./JavaScript) by @[PenguinCabinet](https://github.com/PenguinCabinet)

## 言語の追加について

言語を追加する際は以下のような構造で追加して下さい。

```
└── 言語名
   ├── Dockerfile
   ├── README.md 
   └── プログラム
```

各ファイルについて(太字は必須です)

- **プログラム本体**
プログラム本体。もしプロジェクトを作成する言語の場合はプロジェクトの中身をここに展開、もしくは言語名でプロジェクトを作成して下さい。

- **README.md**
言語名、ビルドの手順、Playgroundなどのリンクを記述して下さい。
レイアウトなどについては[NimのREADME](./Nim/README.md)を参考にして下さい。

- Dockerfile
必須ではありませんが、あるととても助かります。
