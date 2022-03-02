# Docker

Docker provides a way to run applications securely isolated in a container,
packaged with all its dependencies and libraries.

**Note: Installing Docker is optional.** We will give a brief introduction to
containers and how they can be used to package all dependencies and libraries
together. It is not mandatory to have docker installed to get an idea about the
containers. On the other hand, if you have Docker installed, then you can try
creating images and running containers together with the instructor.


## Installation on Linux

Please visit the [Install Docker Engine](https://docs.docker.com/engine/install/) guide
and follow the instructions for your Linux distribution ("Installation per distro" on
the left sidebar).


## Installation on macOS

On macOS you can install Docker Community Ediiton using **Docker for Mac**
app. The Docker for Mac install package includes everything you need to run
Docker on a Mac.

Please visit the [download and install Docker for
Mac](https://docs.docker.com/docker-for-mac/install/) and install Docker app
via Stable Channel.


## Installation on Windows

On Windows you can install Docker Community Edition using **Docker for
Windows** app. The Docker for Windows install package includes everything you
need to run Docker on a Windows system.

Please visit the [download and install Docker for
Windows](https://docs.docker.com/docker-for-windows/install/) and install
Docker app via Stable Channel.


## How to verify the installation

The following command should give you the docker version and not throw errors:

```shell
$ docker --version
```

## If you would like to publish/share docker images

Create an account in [Docker Hub](https://hub.docker.com/)
