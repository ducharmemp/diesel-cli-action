FROM rust:slim

RUN apt-get update -qq && \
    apt-get install -y libpq-dev libsqlite3-dev default-libmysqlclient-dev && \
    rm -rf /var/lib/apt/lists/*

RUN cargo install diesel_cli
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
