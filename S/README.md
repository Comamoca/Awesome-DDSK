# S

## 実行方法

linux/amd64環境下で動かしてください。

```sh
gcc Chatyusha.s

./a.out
```

## Docker

### x86_64

```sh
docker build . -t ddsk:s
docker run --rm ddsk:s
```

### Arm

```sh
docker build . --platform linux/amd64 -t ddsk:s

docker run --rm ddsk:s
```
