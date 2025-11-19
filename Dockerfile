FROM dpage/pgadmin4:latest

# Render asigna el puerto en $PORT
ENV PGADMIN_LISTEN_PORT=${PORT}

EXPOSE ${PORT}

# Usa el entrypoint oficial de pgAdmin
CMD ["/entrypoint.sh"]
