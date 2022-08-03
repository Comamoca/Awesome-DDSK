FROM nimlang/nim:latest

WORKDIR /work

COPY ./ddsk.nim .

ENTRYPOINT [ "nim", "c", "-r", "./ddsk.nim" ]
