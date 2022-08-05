FROM rust:1.62.1

WORKDIR /app

COPY . .

RUN cargo build --release

ENTRYPOINT ["/app/target/release/ddsk"]

