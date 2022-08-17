# C#

## 実行方法

[Mono](https://www.mono-project.com/)を使ってコンパイル、実行をします。

Monoの入手ほうは[こちら](https://www.mono-project.com/download/stable/)をご覧ください。

```
mcs Chatyusha.cs
mono Chatyusha.exe
```

## Docker

```sh
docker build . -t ddsk:cs
docker run --rm ddsk:cs
```