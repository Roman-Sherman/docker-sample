## docker exec -it app-server /bin/sh

# this stage for builder.
FROM golang:1.14-alpine as Builder

# set environment variable.
ENV GOOS=linux
ENV GOARCH=amd64
ENV GO111MODULE=on

# update packages.
RUN apk add --no-cache sqlite-libs sqlite-dev build-base gcc git

# get souce code from github.com
RUN cd / && git clone https://github.com/ybkuroki/go-webapp-sample.git

# move working directory.
WORKDIR /go-webapp-sample

# install dependency packages.
RUN go mod download

# build source code.
RUN go build -o app ./main.go


# this stage for runtime.
FROM alpine:3 as Runtime

# copy artifacts from builder.
COPY --from=Builder /go-webapp-sample/app ./app
COPY --from=Builder /go-webapp-sample/application.docker.yml ./application.docker.yml
COPY --from=Builder /go-webapp-sample/zaplogger.docker.yml ./zaplogger.docker.yml

# release 8080 port
EXPOSE 8080

# perform the following command when a container have started.
ENTRYPOINT ./app -env=docker
