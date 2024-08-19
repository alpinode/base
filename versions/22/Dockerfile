FROM node:22-alpine3.20
COPY --from=shared / /
COPY *.sh /build/
RUN sh /build/run
