# awk

## 実行方法

`awk -f ./ddsk.awk < /dev/null`

`awk` `gawk` にて動作を確認しております

## Docker

```sh
docker build . -t ddsk:awk
docker run --rm ddsk:awk
```

