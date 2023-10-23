
FROM alpine:3.16
COPY --from=shared / /
COPY *.sh /build/
RUN sh /build/run

