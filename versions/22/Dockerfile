FROM node:22-alpine3.20
ENV COREPACK_ENABLE_DOWNLOAD_PROMPT=0
COPY --from=shared / /
COPY *.sh /build/
RUN sh /build/run
