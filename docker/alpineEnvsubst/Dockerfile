# kics-scan disable=b03a748a-542d-44f4-bb86-9199ab4fd2d5
FROM alpine:3.23@sha256:5b10f432ef3da1b8d4c7eb6c487f2f5a8f096bc91145e68878dd4a5019afde11

LABEL org.opencontainers.image.authors="trowaflo"
LABEL org.opencontainers.image.url="https://github.com/trowaflo/docker-custom-images"
LABEL org.opencontainers.image.description="Alpine with envsubst utility"

RUN apk add --no-cache gettext=0.24.1-r1 \
    && adduser -D appuser

USER appuser

ENTRYPOINT ["/bin/sh"]
