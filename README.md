<div align="center"><h1> 👏 Awesome DDSK 💕 </h1>

様々なドドスコプログラムを個人的に集めたリポジトリです。

🎉たくさんのPRありがとうございます！🎉
</div>

## ドドスコプログラムとは

ここでのドドスコプログラムとは[Sheeplaさんのツイート](https://twitter.com/Sheeeeepla/status/1554028833942441984?s=20&t=7NM1CBCnhpZsp3-4JfXBwg)が発端で流行り始めた、楽しんごさんの「ラブ注入💕」を決められたルールに従い出力するプログラムの総称です。

## ディレクトリ構造について

ルート直下に各言語名のディレクトリを配置し、その中に`README.md`とプログラムを配置します。
`README`にはプログラムを実行するための環境構築の手順と、実行手順を記載します。
出来ればWeb上で実行できるリンクやDockerfileなども合わせて配置したいです。

## 実装された言語の一覧

- [Bash](./Bash) by @[Fus1onDev](https://github.com/Fus1onDev)
- [C#](./C#) by @[Chatyusha](https://github.com/Chatyusha)
- [C++](./C++) by @[Chatyusha](https://github.com/Chatyusha)
- [C](./C) by @[Chatyusha](https://github.com/Chatyusha)
- [D](./D) by [@PenguinCabinet](https://github.com/PenguinCabinet)
- [Dart](./Dart) by @[Fus1onDev](https://github.com/Fus1onDev)
- [Go](./Go) by @[gamma-410](https://github.com/gamma-410)
- [Nadesiko3](./Nadesiko3)
- [Nim](./Nim) by @[Comamoca](https://github.com/Comamoca)
- [Python](./Python) by @[Chatyusha](https://github.com/Chatyusha)
- [Ruby](./Ruby) by @[arrow2nd](https://github.com/arrow2nd)
- [S](./S) by @[Chatyusha](https://github.com/Chatyusha)
- [Swift](./Swift) by @[Fus1onDev](https://github.com/Fus1onDev) 
- [TypeScript](./TypeScript) by @[mochi-sann](https://github.com/mochi-sann)

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
