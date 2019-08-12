# docker-webapp-sample

## Preface
This project is a sample for running the following web application on docker containers.

- Front-End Projects
    - [vuejs-webapp-sample](https://github.com/ybkuroki/vuejs-webapp-sample)
- Back-End Projects
    - [springboot-webapp-sample](https://github.com/ybkuroki/springboot-webapp-sample)
    - [rails-webapp-sample](https://github.com/ybkuroki/rails-webapp-sample)
    - [aspnetcore-webapp-sample](https://github.com/ybkuroki/aspnetcore-webapp-sample)

## Install
Perform the following steps:

1. Install [Docker](https://www.docker.com/) in this command.
    ```bash
    yum install docker-ce
    ```
1. Install [Docker Compose](https://docs.docker.com/compose/).

## Starting Container
Perform the following steps:

1. Build the ``docker-compose.yml`` in Docker Compose.
    ```bash
    docker-compose build
    ```
1. Start containers in Docker Compose.
    ```bash
    docker-compose up -d
    ```

### Access to container
Start a bash session on a running container in the following command.

- Web Container
    ```bash
    docker exec -it web-server /bin/bash
    ```
- Application Container
    ```bash
    docker exec -it app-server /bin/bash
    ```
- Database Container
    ```bash
    docker exec -it db-server /bin/bash
    ```

## Stopping Container
This command can stop a running container.

```bash
docker-compose stop
```

Also, the next command can delete the stopped container.

```bash
docker-compose rm
```

## Project Mapping
The follwing figure is the map of this sample project.

```
- docker-webapp-sample
  - asptnetcore             … A pattern of ASP.NET Core and Vue.js.
    + app                   … Application Container
    + db                    … Database Container
    + web                   … Web Container
    - docker-compose.yml    … A Configuration file
  - rails                   … A pattern of Ruby on Rails and Vue.js.
    + app
    + db
    + web
    - docker-compose.yml
  - springboot              … A pattern of Spring Boot and Vue.js.
    + app
    + db
    + web
    - docker-compose.yml
```

## License
The License of this sample is *MIT License*.
