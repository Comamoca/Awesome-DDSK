FROM node:18-alpine

WORKDIR /work

COPY ./ddsk.nako3 .

RUN npm -g install nadesiko3

ENV NAKO_HOME /usr/local/lib/node_modules/nadesiko3

ENTRYPOINT [ "cnako3",  "./ddsk.nako3" ]
