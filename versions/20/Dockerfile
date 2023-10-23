
FROM alpine:3.18
COPY --from=shared / /
COPY *.sh /build/
RUN sh /build/run

