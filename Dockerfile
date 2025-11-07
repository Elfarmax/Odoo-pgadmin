FROM dpage/pgadmin4:latest

# Cambiamos al usuario root solo para preparar permisos
USER root

# Damos permisos al directorio de pgAdmin
RUN chmod -R 777 /var/lib/pgadmin /var/log/pgadmin /pgadmin4

# Volvemos a un usuario sin privilegios
USER pgadmin

ENV PGADMIN_DEFAULT_EMAIL=raul.de1@isepceu.es
ENV PGADMIN_DEFAULT_PASSWORD=123456
ENV PGADMIN_LISTEN_PORT=10000
ENV PORT=10000

EXPOSE 10000

CMD ["python3", "/pgadmin4/pgAdmin4.py"]
