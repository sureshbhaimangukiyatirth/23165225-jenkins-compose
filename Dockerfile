FROM jenkins/jenkins:lts-jdk17

USER root

# Install Docker CLI so Jenkins can communicate with
# the Docker-in-Docker daemon.
RUN apt-get update && \
    apt-get install -y docker.io ca-certificates curl && \
    rm -rf /var/lib/apt/lists/*

USER jenkins
