FROM ubuntu:latest

RUN apt-get -y update

RUN apt-get install -y build-essential \
 language-pack-ja fonts-takao

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

WORKDIR /work

COPY ./Chatyusha.s .

RUN gcc ./Chatyusha.s

ENTRYPOINT [ "./a.out" ]