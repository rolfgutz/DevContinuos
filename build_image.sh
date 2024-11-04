#!/bin/bash
set -x  # Ativa o modo de depuração
echo "O script está rodando."


# Variáveis 
IMAGE_NAME="my-apache-site"
CONTAINER="my-apache-container"

# Criar uma nova imagem
echo "Construindo a imagem: $IMAGE_NAME"
docker build -t $IMAGE_NAME .
if [ $? -ne 0 ]; then
    echo "Falha ao construir a imagem."
    exit 1
fi

# Parar e remover o container existente, se ele existir
echo "Parando e removendo o container: $CONTAINER (se existir)"
docker stop $CONTAINER || true
docker rm $CONTAINER || true

# Subir um novo container 
echo "Subindo um novo container: $CONTAINER"
docker run -d -p 4001:80 \
    -v ./extra:/usr/local/apache2/htdocs/extra \
    --name $CONTAINER $IMAGE_NAME

# Verifique se o container foi iniciado com sucesso
if [ $? -eq 0 ]; then
    echo "Container $CONTAINER iniciado com sucesso."
else
    echo "Falha ao iniciar o container."
    exit 1
fi
