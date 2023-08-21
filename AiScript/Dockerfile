FROM denoland/deno:latest

WORKDIR /usr/src/ddsk

COPY ./ddsk.is .
COPY ./index.ts .

RUN deno cache ./index.ts

CMD deno run -A index.ts