# Projeto DevContinuos

## Resumo do Projeto

Este projeto consiste na configuração de um ambiente de CI/CD utilizando Jenkins e Docker, além da implementação de uma aplicação web simples com Apache. O objetivo é demonstrar a integração entre ferramentas modernas de desenvolvimento e a automação de processos.

## Estrutura do Projeto

- **Docker**: Utilizado para criar um contêiner com o servidor Apache, permitindo a hospedagem de uma aplicação web.
- **Jenkins**: Ferramenta de automação para facilitar o processo de integração e entrega contínua (CI/CD).

## Configuração do Ambiente

### 1. Criação do Token GitHub

Para permitir que o Jenkins acesse o repositório no GitHub, um token de acesso foi criado. Este token é essencial para autenticar o Jenkins durante o processo de checkout do código-fonte.

### 2. Criação do Dockerfile

Um `Dockerfile` foi criado para construir uma imagem Docker do servidor Apache. As principais instruções do Dockerfile incluem:

- **FROM httpd:latest**: Define a imagem base como a mais recente do Apache HTTP Server.
- **COPY ./index.html /usr/local/apache2/htdocs/index.html**: Substitui o arquivo `index.html` padrão por um arquivo personalizado.
- **RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf**: Adiciona uma configuração opcional para evitar avisos nos logs do Apache.
- **EXPOSE 80**: Expondo a porta 80 para acessos externos.

### 3. Configuração do Jenkins

O Jenkins foi instalado no ambiente local, permitindo a automação do processo de build e deploy da aplicação. Um `Jenkinsfile` foi criado com os seguintes estágios:

- **Checkout**: Realiza o checkout do código-fonte do repositório.
- **Test**: Executa comandos de teste simples (neste caso, apenas um `echo`).
- **Deploy**: Executa um script de shell (`build_image.sh`) para construir a imagem Docker da aplicação.

### 4. Instalação de Ferramentas

As seguintes ferramentas foram instaladas no PC para suportar o desenvolvimento e a automação do projeto:

- **Docker**: Para criar e gerenciar contêineres.
- **Apache**: Servidor web para hospedar a aplicação.
- **Jenkins**: Ferramenta de automação para integração contínua e entrega contínua.

### 5. Alteração do Arquivo `index.html`

Apenas o arquivo `index.html` foi modificado para verificar a funcionalidade da aplicação. Essa alteração permitiu visualizar as modificações diretamente no servidor Apache em execução dentro do contêiner Docker.

## Conclusão

Este projeto demonstra a habilidade em integrar diversas tecnologias e ferramentas modernas para criar um ambiente de desenvolvimento automatizado. As experiências adquiridas com o Jenkins, Docker e a configuração do ambiente são valiosas e foram essenciais para o sucesso deste projeto.
