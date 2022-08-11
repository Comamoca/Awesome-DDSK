# Latex

## 実行方法

```
chmod +x ./tex2pdf
./tex2pdf Chatyusha.tex
```

## Docker

```sh
docker build . -t ddsk:latex
docker run  --rm -v $(pwd):/work ddsk:latex
```
