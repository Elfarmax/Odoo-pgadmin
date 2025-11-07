FROM dpage/pgadmin4:latest

# Configuración por defecto de pgAdmin
ENV PGADMIN_DEFAULT_EMAIL=admin@example.com
ENV PGADMIN_DEFAULT_PASSWORD=admin123
ENV PGADMIN_LISTEN_PORT=10000
ENV PORT=10000

# Render necesita saber qué puerto exponemos
EXPOSE 10000

# Ejecutamos pgAdmin directamente sin usar sudo ni entrypoint
CMD ["python3", "/pgadmin4/pgAdmin4.py"]
