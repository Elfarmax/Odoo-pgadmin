# Imagen oficial de pgAdmin
FROM dpage/pgadmin4:latest

# Variables de entorno obligatorias
ENV PGADMIN_DEFAULT_EMAIL=raul.de1@isepceu.es.com
ENV PGADMIN_DEFAULT_PASSWORD=123456
ENV PGADMIN_LISTEN_PORT=10000

# Render usa esta variable $PORT, así que la igualamos
ENV PORT=10000

# Exponemos el puerto
EXPOSE 10000

# Comando de inicio del contenedor (pgAdmin arranca solo con esta imagen)
CMD ["/entrypoint.sh"]
