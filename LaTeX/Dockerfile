FROM unicatflower/docker-texlive-ja:latest

WORKDIR /work
COPY ./Chatyusha.tex .
COPY ./tex2pdf.sh .

RUN sed -e 's/main_memory = 5000000/main_memory = 300000000/g' /usr/local/texlive/2021/texmf-dist/web2c/texmf.cnf

RUN ln -s /usr/local/texlive/2021/bin/$(uname -i)-linux/platex /usr/local/bin/platex
RUN ln -s /usr/local/texlive/2021/bin/$(uname -i)-linux/dvipdfmx /usr/local/bin/dvipdfmx


ENTRYPOINT [ "./tex2pdf.sh","Chatyusha.tex" ]
# ENTRYPOINT ["cat","/usr/local/texlive/2021/texmf-dist/web2c/texmf.cnf"]
