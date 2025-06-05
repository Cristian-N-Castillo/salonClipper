# Imagen base oficial de Nginx
FROM nginx:alpine

# Elimina la página por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia tu sitio al directorio de Nginx
COPY sitio/ /usr/share/nginx/html/

# Expone el puerto 80
EXPOSE 80

# El contenedor inicia Nginx automáticamente (por defecto del ENTRYPOINT)
