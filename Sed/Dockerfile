FROM debian:stable-slim

WORKDIR /work

COPY ./ddsk.sed .

ENTRYPOINT ["sh", "-c", "echo '' | sed -E -f ddsk.sed"]
