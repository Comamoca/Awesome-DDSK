FROM ubuntu:latest

WORKDIR /work

COPY ./ddsk.awk .
COPY ./runddsk.sh .

ENTRYPOINT [ "bash", "./runddsk.sh" ]
