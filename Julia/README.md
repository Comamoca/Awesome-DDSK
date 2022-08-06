# Julia

## 実行方法

### 通常版

`julia ddsk.jl`

### 1関数完結版

`julia ddsk.jl single`

### ショートコード版

`julia -e '0|>s->while s!=2184;s,w=rand([(2s&511|1,"ドド"),(2s,"スコ")]);print(w);end;println("ラブ注入♡")'`

`julia -e "15|>s->while s!=1911;s=2s%4096+(i=rand()<.5);print.('ド'.-[16,22]i);end;println(\"ラブ注入♡\")"`

## Julia Playground (binder)

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gist/antimon2/f31dd3d5053eb8fa377cd86864061f28/HEAD?filepath=DDSK.jl.ipynb)  
※注意：タイミングによってはDockerイメージのビルドが始まり起動までに時間がかかる場合があります。

## Docker

```sh
docker build . -t ddsk:julia
docker run --rm ddsk:julia
# docker run --rm ddsk:julia julia ddsk.jl single  # 1関数完結版
# docker run --rm ddsk:julia julia -e '0|>s->while s!=2184;s,w=rand([(2s&511|1,"ドド"),(2s,"スコ")]);print(w);end;println("ラブ注入♡")'  # ショートコード版
# docker run -it --rm ddsk:julia julia -L ddsk.jl  # ddsk.jl を読み込んだ状態でREPL起動
```

## その他の実装

ddsk.jl ファイル内参照
