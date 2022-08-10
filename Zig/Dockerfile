FROM alpine:edge as builder

RUN apk update && \
    apk add --no-cache curl

RUN curl -Lo zig.tar.xz https://ziglang.org/builds/zig-linux-x86_64-0.10.0-dev.3456+40babaa53.tar.xz
RUN mkdir zig && tar xvf zig.tar.xz -C zig --strip-components 1
ENV PATH $PATH:/zig

RUN mkdir /test
WORKDIR /test
COPY ./build.zig .
COPY ./src/main.zig ./src/

RUN zig build -Drelease-safe=true

ENTRYPOINT [ "zig", "build", "run", "-Drelease-safe=true" ]
