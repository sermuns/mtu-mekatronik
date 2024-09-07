# Extend the peaceiris/mdbook image
FROM peaceiris/mdbook

# Install Cargo and Rust, needed to install mdbook-katex
RUN apk add --no-cache cargo rust

# Install mdbook-katex
RUN cargo install mdbook-katex

# Set the working directory
WORKDIR /book

# Command to serve the book
CMD ["mdbook", "serve", "--hostname", "0.0.0.0"]
