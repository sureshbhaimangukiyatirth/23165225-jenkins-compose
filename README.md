# Secure Jenkins Docker-in-Docker CI/CD Environment

## Project Overview

This repository contains the Docker Compose configuration used
to deploy a containerised Jenkins CI/CD environment for the
ISEC6000 Secure DevOps Assessment 2.

The environment consists of:

- Jenkins
- Docker-in-Docker (DinD)
- Persistent Jenkins storage
- Persistent Docker build storage
- TLS-protected communication between Jenkins and DinD
- A private Docker Compose network

## Architecture

```text
Ubuntu VMware VM
       |
       v
Docker Compose
       |
       +----------------------+
       |                      |
       v                      v
    Jenkins              Docker-in-Docker
       |                      |
       +------ TLS -----------+
              |
              v
        Docker Images
              |
              v
          Docker Hub
