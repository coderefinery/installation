---
layout: master
---

# Docker

Docker provides a way to run applications securely isolated in a container,
packaged with all its dependencies and libraries.

**Note: Installing Docker is optional. We will give a brief introduction to
containers and how they can be used to package all dependencies and libraries
together. It is not mandatory to have docker installed to get an idea about the
containers. On the other hand, if you have Docker installed, then you can try
creating images and running containers together with the instructor.**


## Installation on Linux

### Ubuntu

To install Docker Community Edition (CE), you need the 64-bit version of one of
these Ubuntu versions:

  * Artful 17.10 (Docker CE 17.11 Edge only)
  * Zesty 17.04
  * Xenial 16.04 (LTS)
  * Trusty 14.04 (LTS)

Add official GPG key of the Docker repository to the system
```shell
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```
Setup the docker repository

**amd64**
```shell
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

Update the apt package index.
```shell
$ sudo apt-get update
```

Install the latest version of Docker CE. Any existing installation of Docker is replaced.
```shell
$ sudo apt-get install docker-ce
```

For more information on installation instructions, please visit the
[docker install guide](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/).


### CentOS

To install Docker Community Edition (CE), you need a maintained version of
CentOS 7. Archived versions are not supported or tested.

Setup the Docker repository

```shell
$ sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
```
Install the latest version of docker
```shell
$ sudo yum install docker-ce
```
Start Docker.
```shell
$ sudo systemctl start docker
```

For more information on installation instructions, please visit the
[docker install guide](https://docs.docker.com/engine/installation/linux/docker-ce/centos/).


### Debian

To install Docker Community Edition (CE), you need the 64-bit version of one of
these Debian or Raspbian versions:

* Buster 10 (Docker CE 17.11 Edge only)
* Stretch 9 (stable) / Raspbian Stretch
* Jessie 8 (LTS) / Raspbian Jessie
* Wheezy 7.7 (LTS)

Add official GPG key of the Docker repository to the system
```shell
$ curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
```

Setup the Docker repository

**amd64**
```shell
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable"
```

Update the apt package index.
```shell
$ sudo apt-get update
```

Install the latest version of Docker CE. Any existing installation of Docker is replaced.
```shell
$ sudo apt-get install docker-ce
```

For more information on installation instructions, please visit the
[docker install guide](https://docs.docker.com/engine/installation/linux/docker-ce/debian/).


### Fedora

To install Docker, you need the 64-bit version of one of these Fedora versions:

* 24
* 25

Setup the Docker repository
```shell
$ sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
```

Install the latest version of Docker CE.
```shell
$ sudo dnf install docker-ce
```

Start Docker.
```shell
$ sudo systemctl start docker
```

For more information on installation instructions, please visit the
[docker install guide](https://docs.docker.com/engine/installation/linux/docker-ce/fedora/).


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
