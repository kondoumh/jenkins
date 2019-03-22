FROM jenkins/ssh-slave

ARG DOCKER_CLIENT_VERSION

RUN curl -fsSL https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_CLIENT_VERSION}.tgz \
  | tar -xzC /usr/local/bin --strip=1 docker/docker

