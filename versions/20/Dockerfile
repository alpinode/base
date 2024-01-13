
FROM alpine:3.19
COPY --from=shared / /
COPY *.sh /build/
RUN sh /build/run

