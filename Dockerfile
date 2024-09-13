FROM rust:alpine AS builder

ENV CARGO_HOME=/usr/local/cargo

# Install dependencies
RUN apk add --no-cache curl tar musl-dev gcc go-task

RUN curl -L https://github.com/cargo-bins/cargo-binstall/releases/latest/download/cargo-binstall-x86_64-unknown-linux-musl.tgz \
	| tar -xz -C /usr/local/bin

# Install crates (mdbook, etc)
RUN cargo binstall -y 	mdbook \
						mdbook-toc \
						mdbook-mermaid \
						mdbook-admonish \
						mdbook-linkcheck \
						mdbook-katex \
						mdbook-external-links

FROM alpine

COPY --from=builder /usr/local/cargo/bin /usr/local/bin
