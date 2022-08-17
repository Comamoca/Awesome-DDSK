FROM ubuntu:latest

RUN apt-get -y update

RUN apt-get install -y build-essential \
 language-pack-ja fonts-takao

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt install -y gnupg ca-certificates
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | tee /etc/apt/sources.list.d/mono-official-stable.list
RUN apt update
RUN  apt install -y mono-devel

WORKDIR /work

COPY ./Chatyusha.cs .

RUN mcs ./Chatyusha.cs

ENTRYPOINT [ "mono","Chatyusha.exe" ]
