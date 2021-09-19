# docker-webapp-sample

## Preface
This project is a sample for running the following web application on docker containers.

- Front-End Projects
    - [vuejs-webapp-sample](https://github.com/ybkuroki/vuejs-webapp-sample)
    - [reactjs-webapp-sample](https://github.com/ybkuroki/reactjs-webapp-sample)
- Back-End Projects
    - [springboot-webapp-sample](https://github.com/ybkuroki/springboot-webapp-sample)
    - [rails-webapp-sample](https://github.com/ybkuroki/rails-webapp-sample)
    - [aspnetcore-webapp-sample](https://github.com/ybkuroki/aspnetcore-webapp-sample)
    - [go-webapp-sample](https://github.com/ybkuroki/go-webapp-sample)

## Install
Perform the following steps:

1. Install [Docker](https://www.docker.com/) in this command.
    ```bash
    yum install docker-ce
    ```
1. Install [Docker Compose](https://docs.docker.com/compose/).

## Starting Container
Perform the following steps:

1. Build the ``docker-compose.yml`` in Docker Compose. Set a yml file with the ``-f`` option. For Spring Boot, set ``docker-compose_springboot.yml``.
    ```bash
    docker-compose -f [File Name] build --no-cache
    ```
    ex)
    ```bash
    docker-compose -f docker-compose_springboot.yml build --no-cache
    ```
1. Start containers in Docker Compose.
    ```bash
    docker-compose -f [File Name] up -d
    ```
    ex)
    ```bash
    docker-compose -f docker-compose_springboot.yml up -d
    ```

### Change web container
In this sample, you can change the web container from Vue.js to React.js. To change the container, edit the following source:

**Before**
```yml
services:
  web:
    build: ./web/vue
    container_name: web-server
```

**After**
```yml
services:
  web:
    build: ./web/react
    container_name: web-server
```

### Access to container
Start a bash session on a running container in the following command.

- Web Container
    ```bash
    docker exec -it web-server /bin/bash
    ```
- Application Container
    ```bash
    docker exec -it app-server /bin/sh
    docker logs -f app-server
    ```
- Database Container
    ```bash
    docker exec -it db-server psql -U testusr testdb
    docker exec -it db-server /bin/sh
    pg_dump --inserts -U testusr testdb
    ```
    Show tables and select stored datas.
    ```bash
    # show tables
    \dt;
    # select BOOK table
    select * from "BOOK";
    # exit
    \q
    ```

## Stopping Container
This command can stop a running container.

```bash
docker-compose -f [File Name] stop
```

ex)
```bash
docker-compose -f docker-compose_springboot.yml stop
```

Also, the next command can delete the stopped container.

```bash
docker-compose -f [File Name] rm
```

ex)
```bash
docker-compose -f docker-compose_springboot.yml rm
```

## Project Mapping
The follwing figure is the map of this sample project.

```
- docker-webapp-sample
  + app                                 … Application Container
    - aspnetcore                        … Dockerfile for ASP.NET Core.
    - rails                             … Dockerfile for Ruby on Rails.
    - springboot                        … Dockerfile for Spring Boot.
    - golang                            … Dockerfile for Golang Echo.
  + db                                  … Database Container
  + web                                 … Web Container
    - vue
    - react
  - docker-compose_aspnetcore.yml       … YAAML file for ASP.NET Core.
  - docker-compose_rails.yml            … YAAML file for Ruby on Rails.
  - docker-compose_springboot.yml       … YAAML file for Spring Boot.
  - docker-compose_golang.yml           … YAAML file for Golang Echo.
```

## License
The License of this sample is *MIT License*.
