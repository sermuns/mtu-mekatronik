FROM rust:alpine AS builder

ENV CARGO_HOME=/usr/local/cargo

# Install dependencies
RUN apk add --no-cache curl tar

RUN curl -L https://github.com/cargo-bins/cargo-binstall/releases/latest/download/cargo-binstall-x86_64-unknown-linux-musl.tgz \
	| tar -xz -C /usr/local/bin

# Install crates (mdbook, etc)
RUN cargo binstall -y mdbook
RUN cargo binstall -y mdbook-toc
RUN cargo binstall -y mdbook-mermaid
RUN cargo binstall -y mdbook-admonish
RUN cargo binstall -y mdbook-linkcheck
RUN cargo binstall -y mdbook-katex
RUN cargo binstall -y mdbook-external-links
RUN cargo binstall -y mdbook-variables

FROM alpine

COPY --from=builder /usr/local/cargo/bin /usr/local/bin
