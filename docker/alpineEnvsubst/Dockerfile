FROM alpine:3.20

# Ajouter gettext et créer un utilisateur standard dans une seule commande
RUN apk add --no-cache gettext && \
    adduser -D appuser

# Passer à cet utilisateur
USER appuser

# Point d'entrée
ENTRYPOINT ["/bin/sh"]
