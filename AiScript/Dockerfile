FROM denoland/deno:latest

WORKDIR /usr/src/ddsk

ADD ./ddsk.is .
ADD ./index.ts .

RUN deno cache ./index.ts

CMD deno run -A index.ts