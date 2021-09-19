# This image is for building application.
FROM node:14.17.6 AS Builder

# Get souce code from github.com
RUN git clone https://github.com/ybkuroki/vuejs-webapp-sample.git -b v2.0.4 --depth 1

# Move working directory.
WORKDIR /vuejs-webapp-sample

# Install dependency packages and build source code.
RUN npm install \
  && npm run build


# This image is for running application.
FROM nginx:latest AS Runtime

# Copy artifacts from builder image.
COPY --from=Builder /vuejs-webapp-sample/dist/ /usr/share/nginx/html/
# Add nginx.conf
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./server.conf /etc/nginx/conf.d/server.conf

# Release 80 and 443 port
EXPOSE 80 443
