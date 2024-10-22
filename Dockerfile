FROM httpd:latest

# Certifique-se de usar COPY para substituir qualquer arquivo existente
COPY ./index.html /usr/local/apache2/htdocs/index.html


# Opcional: Configurar o ServerName para evitar o aviso nos logs
RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf

EXPOSE 80