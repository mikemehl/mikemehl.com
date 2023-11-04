FROM rust:1.72.1 as builder
RUN rustup target add x86_64-unknown-linux-musl
RUN apt-get update && apt-get install -y musl-tools musl-dev
COPY ./backend /backend
COPY ./data/resume.yaml /data/resume.yaml
WORKDIR /backend
RUN cargo build --target x86_64-unknown-linux-musl --release

FROM alpine:3.17
COPY --from=builder /backend/target/x86_64-unknown-linux-musl/release/backend /site/backend
WORKDIR /site
RUN mkdir /site/static
COPY ./data/resume.pdf /site/static/resume.pdf
EXPOSE 8080
ENTRYPOINT exec /site/backend
