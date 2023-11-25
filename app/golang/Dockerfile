## docker exec -it app-server /bin/sh

# This image is for building application.
FROM golang:1.20-alpine as Builder

ARG VERSION

# Set environment variable.
ENV GOOS=linux
ENV GOARCH=amd64
ENV GO111MODULE=on

# Install required packages.
RUN apk add --no-cache git

# Get souce code from github.com
RUN cd / && git clone https://github.com/ybkuroki/go-webapp-sample.git -b ${VERSION} --depth 1

# Move working directory.
WORKDIR /go-webapp-sample

# Install dependency packages.
RUN go mod download

# Build source code.
RUN go build -o app ./main.go


# This image is for running application.
FROM alpine:3 as Runtime

# Copy artifacts from builder image.
COPY --from=Builder /go-webapp-sample/app ./app

# Release 8080 port
EXPOSE 8080

# Perform the following command when a container have started.
ENTRYPOINT ./app
