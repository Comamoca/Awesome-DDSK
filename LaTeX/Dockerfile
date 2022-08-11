FROM unicatflower/docker-texlive-ja:latest

WORKDIR /work

RUN ln -s /usr/local/texlive/2021/bin/$(uname -i)-linux/platex /usr/local/bin/platex
RUN ln -s /usr/local/texlive/2021/bin/$(uname -i)-linux/dvipdfmx /usr/local/bin/dvipdfmx


ENTRYPOINT [ "./tex2pdf.sh","Chatyusha.tex" ]
