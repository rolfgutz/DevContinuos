# Usa a imagem oficial do Apache HTTP Server como imagem base
FROM httpd:latest

# Copia o arquivo local index.html para o diretório de documentos do Apache no contêiner
# Isso irá substituir qualquer arquivo existente com o mesmo nome
COPY ./index.html /usr/local/apache2/htdocs/index.html

# Adiciona o ServerName como "localhost" no arquivo de configuração do Apache
# Isso é feito para evitar avisos de "ServerName" nos logs do Apache
RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf

# Expõe a porta 80 para permitir o tráfego HTTP para o contêiner
EXPOSE 80
