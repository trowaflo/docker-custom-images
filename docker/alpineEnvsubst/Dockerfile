# kics-scan disable=b03a748a-542d-44f4-bb86-9199ab4fd2d5
FROM alpine:3.23

LABEL org.opencontainers.image.authors="trowaflo"
LABEL org.opencontainers.image.url="https://github.com/trowaflo/docker-custom-images"
LABEL org.opencontainers.image.description="Alpine with envsubst utility"

# Ajouter gettext et créer un utilisateur standard dans une seule commande
RUN apk add --no-cache gettext=0.24.1-r1 \
    && adduser -D appuser

# Passer à cet utilisateur
USER appuser

# Point d'entrée
ENTRYPOINT ["/bin/sh"]
