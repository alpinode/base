
FROM node:20-alpine3.19
COPY --from=shared / /
COPY *.sh /build/
RUN sh /build/run
