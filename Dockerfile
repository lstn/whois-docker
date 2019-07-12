FROM debian:stretch-20190708  as whois-builder

RUN apt-get update -qq && apt-get install -y whois binutils

FROM gcr.io/distroless/base

COPY --from=whois-builder /usr/bin/whois /usr/bin/whois
COPY --from=whois-builder ["/lib/x86_64-linux-gnu/libc*", \
         "/lib/x86_64-linux-gnu/libidn*", \
         "/lib/x86_64-linux-gnu/"]

ENTRYPOINT ["whois"]
CMD ["--help"]