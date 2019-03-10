FROM jenkins/ssh-slave

ENV DOCKER_CLIENT_VERSION=18.09.2
ENV DOCKER_API_VERSION=1.39
RUN curl -fsSL https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_CLIENT_VERSION}.tgz \
  | tar -xzC /usr/local/bin --strip=1 docker/docker