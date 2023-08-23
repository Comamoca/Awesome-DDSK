FROM ubuntu:latest
ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"

RUN apt-get update
RUN apt-get install -y vim language-pack-ja

WORKDIR /root
COPY ./ddsk.vim /root/ddsk.vim

CMD ["vim", "-S", "ddsk.vim"]
