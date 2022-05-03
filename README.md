# STRAPI API

Ambiente com Strapi, Postgres e PgAdmin

<br />

| Software    | Port |
| ----------- | ---- |
| **strapi**  | 1337 |
| **pgadmin** | 8080 |

<br />

## Pré-requisitos

Para começar, certifique-se de ter o [Node](https://nodejs.org/), [Docker](https://docs.docker.com/) e também o [Docker Compose](https://docs.docker.com/compose/install/) no seu sistema.

<br />

## Download

Faça o download do projeto com o comando:

```sh
git clone git@github.com:caiobarilli/strapi-postgres.git
```

<br />

## Instalação

instale as dependencias com yarn ou npm e rode o script de instalação

```sh
./install.sh
```

E acesse seu [navegador](http://localhost:1337/) para vizualizar o projeto.

<br>

ou

<br>

crie o arquivo .env

```sh
cp .env.manual .env
```

construa a imagem para o strapi

```sh
docker build -t mystrapi:latest .
```

Baixe e suba os outros containers

```sh
docker-compose up
```

Acesse seu [navegador](http://localhost:1337/) para vizualizar o projeto.

<br />
